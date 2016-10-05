import os
import sys
import subprocess
import itertools

LESS_INFO = False
if len(sys.argv) == 2:
    LESS_INFO = bool(sys.argv[1])

nvidia = subprocess.Popen(["nvidia-smi"], stdout=subprocess.PIPE, stdin=subprocess.PIPE)
out= nvidia.communicate()[0].splitlines()[::-1]

selected_lines = list(itertools.takewhile(lambda i: not i.startswith('|=='), out))[1:]

pid_data = {}
for line in selected_lines:
    try:
        _, gpuid, pid, _, language, gpu_memory, _ = line.split()
    except:
        print "NO programs running on GPU"
        sys.exit(1)
    pid_data[pid] = [gpuid, gpu_memory]

if LESS_INFO:
    os.system("ps f -o user,pgrp,pid,pcpu,pmem,start,time,command -p " + ' '.join(pid_data.keys()))
    sys.exit(1)

ps_command = "ps f -o user,pgrp,pid,pcpu,pmem,start,time,command -p " + ' '.join(pid_data.keys())
header     = "GPU_ID GPU_MEM USER PGRP PID %CPU %MEM STARTED TIME COMMAND".split()
header_line= "----- -------  ---- ---- --- ---- ---- ------- ---- -------".split()


ps = subprocess.Popen(ps_command.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
out_ps = ps.communicate()[0].splitlines()[1:]

data = []
for line in out_ps:
    line_data = line.split()
    nv_data = pid_data[line_data[2]]
    data.append(nv_data + line_data)


for h in header: print '{0: <10}'.format(h),
print ' '
for h in header_line: print '{0: <10}'.format(h),
print ' '

for data_item in data:
    for d in data_item: print '{0: <10}'.format(d),
    print ''


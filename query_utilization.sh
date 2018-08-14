while true; 
do nvidia-smi --query-gpu=utilization.gpu --format=csv | tail -n 4 | paste -s -d"," >> gpu_utillization.log; sleep 5; 
done

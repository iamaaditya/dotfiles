0 11 * * * cp -r ~/code/misc /Volumes/GoogleDrive/My\ Drive/misc
0 11 * * * ~/code/misc/logs/get_logs.sh
0 11 * * * ~/code/misc/notebooks/backup.sh
0 10 * * * cd "/Volumes/GoogleDrive/My Drive/vimwiki_html/diary/" && ls -r | column -t | grep -v diary | grep -v summary  | xargs tail -n +1 | sed 's/==>/<h3>/' | sed 's/.html <==/<\/h3>/' > summary.html


alias gssh="gcloud compute ssh --ssh-flag='-ServerAliveInterval=9000'"
alias gdel="gcloud compute instances delete --delete-disks all --quiet"
alias gconf='gcloud compute config-ssh'
alias grun="gcloud compute instances list | grep RUNNING | grep -i adi"


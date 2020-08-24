
#!/bin/bash
while [ 1=1 ] 
do
 sleep 5
#gcloud auth login robo-567@smart-display-287302.iam.gserviceaccount.com --quiet
#gcloud config set account azure.220720202126@gmail.com
 gcloud alpha cloud-shell ssh --boosted --command='sudo rm -rf *.ts ; touch $(date +"%d%m%Y%H%M%S").ts' --project p$(date +"%d%m%Y%H%M%S") --quiet 
# logout
 sudo rm -rf *.ts 
 touch $(date +"%d%m%Y%H%M%S").ts
done

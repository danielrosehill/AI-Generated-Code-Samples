#!/bin/bash

# Configuration
USERNAME="your-username"        
TOKEN="your-github-token"        
BACKUP_BASE_DIR="github-backup"  
DATE=$(date +'%d%m%Y')        
BACKUP_DIR="$BACKUP_BASE_DIR/$DATE" 

if ! command -v jq &> /dev/null
then
    echo "jq could not be found, please install it (e.g., sudo apt-get install jq)"
    exit
fi

mkdir -p $BACKUP_DIR

repos=$(curl -s -H "Authorization: token $TOKEN" https://api.github.com/users/$USERNAME/repos?per_page=100 | jq -r '.[].clone_url')

for repo in $repos; do
    repo_name=$(basename $repo .git)
    git clone $repo $BACKUP_DIR/$repo_name
done

echo "Backup completed. Repositories have been downloaded to $BACKUP_DIR."

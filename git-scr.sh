#!/bin/bash
echo "What repo will push?"
read repo_name
echo "Write commit message"
read commit_mess

github() {
cd ~/Git/$repo_name
git_actions 
}

bitbucket() {
cp ~/Git/$repo_name/* ~/BitBucket/$repo_name/
cd ~/BitBucket/$repo_name
git_actions
}

gitlab() {
cp ~/Git/$repo_name/* ~/GitLab/$repo_name/
cd ~/GitLab/$repo_name
git_actions
}

git_actions() {
git add .
git commit -m "$commmit_mess"
git push origin
}


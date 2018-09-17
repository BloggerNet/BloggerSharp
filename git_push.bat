git config --global user.email "azure-pipelines[bot]@users.noreply.github.com"
git config --global user.name "azure-pipelines[bot]"

git add .

git status

git commit -m "Update Docs"

git -c http.extraheader="AUTHORIZATION: basic %GITHUBPERSONALTOKEN%" push origin master 

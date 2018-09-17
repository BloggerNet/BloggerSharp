echo set config
git config --global user.email "azure-pipelines[bot]@users.noreply.github.com"
git config --global user.name "azure-pipelines[bot]"

echo add track
git add .

echo show diff
git status

echo commit
git commit -m "Update Docs"

echo push
git -c http.extraheader="AUTHORIZATION: basic $(env:SYSTEM_ACCESSTOKEN)" push origin master 

@echo off

echo set email %GITHUB_EMAIL%
git config --global user.email "%GITHUB_EMAIL%"

echo set user %GITHUB_USER%
git config --global user.name "%GITHUB_USER%"

echo add track
git add .

echo show diff
git status

echo commit
git commit -m "Update Docs"

echo signin
echo machine github.com >> %HOMEPATH%\_netrc
echo login %GITHUB_USER% >> %HOMEPATH%\_netrc
echo password %GITHUB_TOKEN% >> %HOMEPATH%\_netrc

echo push
git push origin master 

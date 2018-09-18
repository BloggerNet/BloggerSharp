@echo off

echo clone
git clone -q https://%GITHUB_TOKEN%@github.com/%GITHUB_OWNER%/%GITHUB_REPOSITORY%.git --branch=gh-pages ghpages > NUL 2>&1 

echo show directory
dir ghpages

echo remove directory
cd ghpages
git rm *
cd ..

echo copy directory
xcopy /e docs ghpages

echo show directory
dir ghpages

cd ghpages

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

echo push
git push -q https://%GITHUB_TOKEN%@github.com/%GITHUB_OWNER%/%GITHUB_REPOSITORY%.git gh-pages > NUL 2>&1 

echo finish

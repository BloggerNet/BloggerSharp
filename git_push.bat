@echo off

echo clone
git clone -q https://%GITHUB_TOKEN%@github.com/%GITHUB_OWNER%/%GITHUB_REPOSITORY%.git --branch=gh-pages ghpages

echo show directory
dir ghpages

echo remove directory
rd /s /q ghpages

echo copy directory
mkdir ghpages
xcopy /e docs ghpages

echo show directory
dir ghpages

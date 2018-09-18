@echo off

echo clone
git clone -q https://%GITHUB_TOKEN%@github.com/%GITHUB_OWNER%/%GITHUB_REPOSITORY%.git --branch=gh-pages ghpages

echo show directory
dir ghpages

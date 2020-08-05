#!/bin/bash

set -e

echo "Start gitstart.sh"
echo "---"
echo "Execute git clone"
echo "---"
git clone https://github.com/mezgoodle/SQL.git
cd SQL
echo "Execute cat index.sql"
echo "---"
cat index.sql
echo "Create new file"
echo "---"
echo "hello" > test.txt
echo "Execute git status"
echo "---"
git status
echo "## Login into git..."
echo "---"
git config --global user.email "mezgoodle@gmail.com"
git config --global user.name "auto-formatter"
echo "## Staging changes..."
echo "---"
git add .
echo "## Commiting files..."
echo "---"
git commit -m "Formatted code" || true
echo "## Pushing to master"
echo "---"
git push -u origin master
echo "End of gitstart.sh"

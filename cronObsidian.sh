#!/usr/bin/zsh
echo "Atualiando repositório Obsidian..."
d=$(date +'%a %b %e %H:%M:%S %Z %Y')
msg="UpdateAt: ""$d"
cd ~/git/obsidianVault
git add .
git commit -m "$msg"
git push origin main 

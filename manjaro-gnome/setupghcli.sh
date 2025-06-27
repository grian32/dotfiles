#!/bin/bash
echo "Installing GH CLI"
sudo pacman -Sy github-cli
echo "You will be asked to login"
gh auth login
echo "Setting up git for gh via gh cli"
gh auth setup-git
echo "Setting up git credentials"
git config --global user.email "grianguy32@gmail.com"
git config --global user.name "grian32"

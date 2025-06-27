#!/bin/bash
wget -O toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.6.3.43718.tar.gz
mv toolbox.tar.gz ~
mkdir ~/toolbox/
tar -xvzf ~/toolbox.tar.gz -C ~/toolbox/
echo "Now setting up toolbox!"
cd ~/toolbox/
cd $(ls -d */|head -n 1)
cd bin
./jetbrains-toolbox
echo "Toolbox has been setup via jb provided tools! You can now ctrl+c this process and open it up via a variety of ways."

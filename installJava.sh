#!/bin/bash


clear 
sleep 2

echo "
++++++++++++++++++++++++++++++++++++++
Please Install Linux Tarball From Here

 http://jdk8.java.net/download.html
++++++++++++++++++++++++++++++++++++++"

echo "Type YES to Continue."

read ansr

if [ $ansr == "YES" ];
then
     run
else
     exit
fi

run() 
{
cd Downloads
echo "Please enter your computer User Name"

read USER

if [ /home/$USER/Downloads/jdk-8-ea-b121-linux-arm-vfp-hflt-19_dec_2013.tar.gz ]; then
    sudo tar zxvf jdk-8-ea-b121-linux-arm-vfp-hflt-19_dec_2013.tar.gz -C /opt
    export PATH=$PATH:opt/jdk1.8.0/bin
else
   echo "This only works on the December 19, 2013 build."
fi
}

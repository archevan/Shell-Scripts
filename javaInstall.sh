#!/bin/bash


clear 
sleep 2

echo "

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
               Java Development Kit Installer (Hard Float)
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                                                      "

echo "Type INSTALL to install the JDK for arm, type SET to set path."

read ansr

if [ $ansr == "INSTALL" ];
then
     run
elif [ $ansr == "SET" ];
then
     crunch
else
  exit
fi

run() 
{
wget http://www.java.net/download/jdk8/archive/b121/binaries/jdk-8-ea-b121-linux-arm-vfp-hflt-19_dec_2013.tar.gz

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
crunch()
{
export PATH=$PATH:opt/jdk1.8.0/bin
}

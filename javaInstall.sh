#!/bin/bash


clear 
sleep 2

echo "

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
               Java Development Kit Installer (Hard Float)
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                                                      "

echo "Type INSTALL to install the JDK for ARM, type SET to add the JDK to the system PATH, or type IDE to download the Eclipse IDE for ARM."

read ansr

if [ $ansr == "INSTALL" ];
then
   run
elif [ $ansr == "SET" ];
then
    export PATH=$PATH:opt/jdk1.8.0/bin
elif [ $ansr == "IDE" ];
then
  sudo apt-get install eclipse-platform 
else
 exit
fi

run() {
 wget http://www.java.net/download/jdk8/archive/b121/binaries/jdk-8-ea-b121-linux-arm-vfp-hflt-19_dec_2013.tar.gz

cd Downloads
echo "Please enter your computer User Name"

read USER

if [ /home/$USER/Downloads/jdk-8-ea-b121-linux-arm-vfp-hflt-19_dec_2013.tar.gz ]; then
    sudo tar zxvf jdk-8-ea-b121-linux-arm-vfp-hflt-19_dec_2013.tar.gz -C /opt
    export PATH=$PATH:opt/jdk1.8.0/bin
    clear
    echo "
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                    Installation Complete!
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
else
   echo "This only works on the December 19, 2013 build."
   clear
fi
}

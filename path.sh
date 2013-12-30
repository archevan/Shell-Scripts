#!/bin/bash

if [ -s /opt/jdk1.8.0/bin  ]; then
      echo "[1] Checking Directorys"
      sleep 1 
      echo "[2] Doing other fancy computer stuff"      

      sleep 2

      clear
      
      echo "
            =======================================

               You have Java Installed, Congrats!
                   Your PATH has been reset!

             *To check for java, enter "java -version"
                                           
            =======================================                              
                                                 "
 export PATH=$PATH:/opt/jdk1.8.0/bin 
    
else
      echo "[1] Checking Directorys"
      sleep 1
      echo "[2] Other Fancy Computer Stuff"

      sleep 2

      echo "You do not have Java Installed, Sorry"
fi



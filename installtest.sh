#!/bin/sh/
#===============================================================================
#
#          FILE:  installtest.sh
#
#         USAGE:  sh installtest.sh <number of times you would like to install and uninstall your app ex: 1, 2 or a positive  number><space>
		  <name-of-apk-file.apk><space><name-of-package><space></cygdrive/c/path-to-your-apk-file>
#
#   DESCRIPTION: This shell script is used to install and uninstall an Android app (apk) a number of times (number decided by the user)
				  
#
#       OPTIONS:  --- Press Ctrl+C to end the script prematurely
#  REQUIREMENTS:  --- Windows 10, Cygwin 64 (package dos2unix), Android SDK, Android Handset with Kit-Kat
#          BUGS:  --- 
#         NOTES:  ---
#        AUTHOR:  Prasad BG, ezeetester@gmail.com
#      
#       VERSION:  1.0
#       CREATED:  12/21/2016 11:15:01 PM IST
#      REVISION:  ---
#===============================================================================

for((i=1; i<=$1; i++)); 
 do
    echo $i
	cd $4
	adb install $2
	adb uninstall $3
	
   
done

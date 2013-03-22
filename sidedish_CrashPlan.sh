#!/bin/bash

# File References
remoteFile_CrashplanFileName='CrashPlan_3.5.2_Linux.tgz'
remoteFile_Crashplan='http://download.crashplan.com/installs/linux/install/CrashPlan/$remoteFile_CrashplanFileName'
local_Crashplan_InstallFolder='CrashPlan-install'
local_Crashplan_InstallFile='install.sh'
local_Crashplan_Installer='$local_Crashplan_InstallFolder/$local_Crashplan_InstallFile'

sudo su

echo "~~    Crashplan - depends on Java"
echo "~         Downloading Crashplan installation"
curl -O $remoteFile_Crashplan 

echo "~~        extracting crashplan installation"
tar -zxvf $remoteFile_CrashplanFileName

echo "~~        launching crashplan installer"
./$local_Crashplan_Installer

echo "~~        cleaning up Crashplan files"
rm $remoteFile_CrashplanFileName
rm -R $local_Crashplan_InstallFolder

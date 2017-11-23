#bin/bash
#Transfer file through remote host
#Topo

#checking ssh

#get file from Host A
hostA=''
hostC=''

#set time rotate for getting file
settime=0

#Path of file want to get in host A
pathA=/usl/local/
filename=''

#path save in host B
pathB=/root/Desktop

#Getting file from host A
scp -r hostA:/path/filename pathB

#path save in host C
pathC=
#Putting to host C
scp -r pathB/filename hostC:/pathC





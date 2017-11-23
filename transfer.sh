#bin/bash
#Transfer file through remote host
#We are running on host B

#get file from Host A
hostA='192.168.1.2'
hostC='192.168.1.4'

#checking ssh
ssh-copy-id -i ~/.ssh/id_rsa.pub $hostA
ssh-copy-id -i ~/.ssh/id_rsa.pub $hostC

#set time rotate for getting file
$time=10

#Path of file want to get in host A
pathA='/usl/local'
filename='test.txt'

#path save in host B
pathB='/root/Desktop'


#path save in host C
pathC='/usr/local'


while [ true ]
do
    #Getting file from host A
    scp -r hostA:/$pathA/$filename $pathB
    
    #Putting to host C
    scp -r $pathB/$filename hostC:/$pathC
    
    #Rotate at second(s) time
    sleep $time
done



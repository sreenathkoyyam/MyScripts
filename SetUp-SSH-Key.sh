server 01
---------
#create a ssh key
ssh-keygen
# go to .ssh folder
cd ~/.ssh/
ls
#open the file and copy the key part
 cat id_rsa.pub
#And add this ssh key in server2
# connect server using ssh
 ssh svc-coredevtools@pvcdlchebe001uk


server02
---------
#create a ssh key
  ssh-keygen
# go to .ssh folder
 cd ~/.ssh/
 ls
 # create a file called authorized_keys and put server01 key in this file and save  
vi authorized_keys
 


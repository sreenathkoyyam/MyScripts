set echo on
#remove output.json
rm -r output.json
#create new json file
sudo chef-backend-ctl cluster-status --json > output.json
#find the follower name from that json
s=`grep  -B 4 -A 5 "follower" output.json | grep -B 8 'partially_synced": false'| head -1 | awk -F: '{print $2}'|sed "s/\"//g"|sed "s/\,//g"|sed "s/^ //g"`
echo "$s"
#check node name is null or not
if [ -z != $s ];  ##note the space after the string you are searching for
then
echo "Hooray!!It's available"
#check node is in same system or not
if [ $s != "<serverName>" ];
then
#ssh to the node and exicute the backup and put it in nexus
ssh -t  svc-coredevtools@"$s" 'sudo chef-backend-ctl backup; fname=`ls -1 /var/opt/chef-backup|tail -1`; echo $fname;curl -v -F r=PAAS -F hasPom=false -F e=zip -F g=ChefBackup -F a=$s -F v=$s -F p=zip -F file=/var/chef-backup/$fname -u <nexus username: Nexus Pass> https://<url>'
#curl --upload-file $ZipFullPath -u username:password -v $Nexus/JenkinsBackup/$Jenkins/$BUILD_NUMBER/
echo "Backup at /var/chef-backup/"
else
echo "Oops!! it is <serverName>"
# exicute the backup command  and put it in nexus
sudo chef-backend-ctl backup
echo "Backup at /var/chef-backup/"
fi

else
echo "Oops!!Node Not available"

fi

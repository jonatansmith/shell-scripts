
#Author: jonatansmith@gmail.com
#Date: 2020-05-18
#Name: bucket copy
#Description:
#Copy files from one folder or bucket to another folder or bucket
while read p; do
  echo "$p";
  #echo "$p"|tee -a bucket_copy.log;
  aws s3 cp s3://s3bucket/2019-10-29/$p  s3://s3bucket/another_dir/2019-10-29/$p --profile awsconfigprofile --no-verify-ssl;
  #sleep 1;
done <list_of_files_to_be_copied.txt
#a text file with list of files to be copied. Can be obtained with:
#ws s3 ls s3://s3bucket/2019-10-29/ --profile awsconfigprofile --no-verify-ssl >> list_of_files_to_be_copied;

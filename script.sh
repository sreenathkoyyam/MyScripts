1) who am i
Calendar
-----------
 cal :: for calendar
 cal 7 2006
  cal feb 2033
Date
------
3) date :: current date
4) date ‘+DATE:%m-%y%nTime:%H:%M:%S’  :: custom date display
Touch
---------
touch test1  :: create a file
Directory
------------
mkdir  <Folder-Name>:: make a directory

CAT
------
Cat > random  [press ctrl + d]
hii
Cat random  :: show random file content
Cat random test >sample   :: Put random and test file content in sample (Merge 2 File)

Clear
--------
Clear   :: will clear the terminal

Rename and Delete
---------------------------
touch forrest
mv forrest green_forrest
rm green_forrest
mkdir new
rm -R new   or rmdir new

# Create Copies, Links to Files & Directories
touch test
cp test /appl/test

Link
----
ln test new :: new will act as a replica for test

soft link
---------
ln -s test test_soft  :: create a soft link and name it as test_soft

#!/bin/bash 
#buildnessie 
#0. general setmeup.template should be rolled in first 
#1. compiles the info files from the file directory into saveme.sh 
#2. rolls saveme.sh into  setmeup.sh 
#3. roll in getmeout.sh should be no changes 


#0. setmeup.template 
echo "$(cat files/setmeup.template)"> setmeup.sh
# motd from motd.template is added to setmeup.sh 
echo " # new motd from motd.template is below">> setmeup.sh
echo "echo\"">> setmeup.sh
echo "$(cat files/motd.template)">> setmeup.sh
echo '" > /etc/motd' >> setmeup.sh

# getmeout.sh from getmeout.template is added to setmeup.sh 

#echo 'echo \''>> setmeup.sh
#echo "$(cat files/getmeout.template)">> setmeup.sh
#echo '\' > ./getmeout.sh' >> setmeup.sh

echo " # getmeout.sh from getmeout.template is below">> setmeup.sh
echo "\"s=`base64 files/getmeout.template`\"">> setmeup.sh
echo 'echo "$s" | base64 --decode >getmeout.sh'>> setmeup.sh


#### this bit has broken my brain for now 

# saveme.sh from saveme.template and .info files is added to setmeup.sh 
#echo " # saveme.sh from saveme.template and .info is below">> setmeup.sh
#echo "echo\"">> setmeup.sh

#echo "TITLE=()">> setmeup.sh
#echo "TEXT=()">> setmeup.sh
#for f in "file/*.info"
#do
#	echo "TITLE+=(\"head -n 1 file\/f \")"
#	echo "text+=(\"tail -n +2 file\/f \")"
	
#done
#echo "\" > ./saveme.sh" >> setmeup.sh


#tail -n +2 a.csv this prints all but first line of 1 

#will add all the other files here when they are done 

# should be last lines of setmeup.sh actually "breaks" the system and reboots

echo "##  below to kill's the gui by disabling lightdm "  >> setmeup.sh
echo '# can be started manually by using "sudo service lightdm start"' >> setmeup.sh
echo 'echo manual >> /etc/init/lightdm.override' >> setmeup.sh
echo "reboot" > setmeup.sh

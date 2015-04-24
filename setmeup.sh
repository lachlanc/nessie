#!/bin/bash 

#  prompt  user to run as root / use sudo as root use sudo 
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root try using sudo" 1>&2
   exit 1
fi

##  below to kill's the gui by disabling lightdm 
# can be started manually by using "sudo service lightdm start"
mv /etc/motd /etc/motd.tmp
 # new motd from motd.template is below
echo"

" > /etc/motd
 # getmeout.sh from getmeout.template is below
echo"
#!/bin/bash 
DIRECTORY="first"
FILE="potato"
VALUE="salad"
# this finds the directory of getmeout.sh to make everything else work
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) 
cd $DIR
echo $DIR
if [ ! -d "$DIRECTORY" ]; 
	then
	echo "you have not created the directory $DIRECTORY find out how using saveme.sh"
else
	echo "./$DIRECTORY/$FILE"
	if [ ! -f "./$DIRECTORY/$FILE" ]; 
		then
		echo "you have not created the file $FILE find out how using saveme.sh"
		else
		cd $DIRECTORY
		INFILE=$(< $FILE)
		echo $INFILE
		if [ "$INFILE" == "$VALUE" ];
			then
			# they have won remove /etc/init/lightdm.override
			#and copy motd back to what it was 
			#cd .. 
			#rm /etc/init/lightdm.override
			#mv ./files/legal /etc/legal
			echo "you have completed the quest"
			echo "please wait"
			sleep 3
			#sudo service lightdm start
		else
		# need to write this bit to give hints about file content
			INFILE_NO_WHITESPACE="$(echo -e "${INFILE}" | tr -d '[[:space:]]')"
			echo $INFILE_NO_WHITESPACE
			if [ $INFILE_NO_WHITESPACE != $INFILE ];
				then 
				echo "there is additional whitespace in your file (spaces or extra blank lines) remove them to continue"
				else
				
				if [ ${INFILE,,} != $INFILE ] # this checks for any upper case char's
					then
					echo "Linux is case sensitive your file content should be all lower case "
				else
					echo "file content does not match \"salad\""
				fi
			fi
				
		fi
	fi
fi
" > ./getmeout.sh

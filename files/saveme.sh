#!/bin/bash 
cat ./files/nessie
PROMPT=$'prompt \nlachlan@'"$PWD"
echo "$PROMPT"
read -p "$PROMPT" answer; echo "$answer"
if [ $answer = "apt-get" ]
then
	echo "we win"
    
fi
#this removes white space useful to check if they were close to ok  
FOO_NO_WHITESPACE="$(echo -e "${FOO}" | tr -d '[[:space:]]')"

function quit {
   exit
}  
function e {
    echo $1 
}  
$HELLO = "hello"
e Hello
e $HELLO
quit
echo foo 
# general outline 
# one file breaks X11 / xfce ( do this by disabling lightdm )
# theeeenn create all the file that you need for the rest of the workshop ?
# hard to say if i should make a helper that they type the command and it gives them a cut down version of the
## uncomment line below to kill the gui balrga
# echo 'manual' | sudo dd of=/etc/init/lightdm.override
# this also works but needs root for all so may be better to do the first one
# echo manual >> /etc/init/lightdm.override
#
# sudo halt (that'll teach them )
# 
# 
# 

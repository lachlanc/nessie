#!/bin/bash 


for f in *.info
do
	echo "cooking - $f into program"
done



#buildnessie builds the info files from the file directory into set me up also builds savem
echo "#!/bin/bash 





# need to prompt  must be run as root use sudo 
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root try using sudo" 1>&2
   exit 1
fi

# this tells the desktop manager to not turn on mwahahaha
echo manual >> /etc/init/lightdm.override

# general outline 
# one file breaks X11 / xfce ( do this by disabling lightdm )
# theeeenn create all the file that you need for the rest of the workshop ?
mkdir files 


echo "                _..--+~/@-@--.
           _-=~      (  .    )
        _-~     _.--=.\ \''''
      _~      _-       \ \_\
     =      _=          '--'
    '      =                             .
   :      :                              '=_. ___
   |      ;                                  '~--.~.
   ;      ;                                       } |
   =       \             __..-...__           ___/__/__
   :        =_     _.-~~          ~~--.__
__  \         ~-+-~                   ___~=_______
     ~@#~~ == ...______ __ ___ _--~~--_
Oh no your computer has been broken by the Loch Ness monster before he will leave your computer and restore the GUI ( graphical user interface) you must  perform a series of quests for him
1. create a folder called first
2. create a file inside the folder called first named potato
3. edit that text file to say 'salad'
" > /etc/motd

#will add all the other files here when they are done 


# hard to say if i should make a helper that they type the command and it gives them a cut down version of the

sudo reboot  #(that'll teach them )
" >./setmeup.sh

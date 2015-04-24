
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi



for f in *.sh
do
	echo "Removing password for pdf file - $f"
done

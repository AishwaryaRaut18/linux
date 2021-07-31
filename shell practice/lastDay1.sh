#1/bin/bash

banner() {
    figlet welcome
}

usage() { 
	echo "help: bash lastDay1.sh -t domain.com -f filename.txt"
	echo "[-t]: domain"
       echo "[-f] : filename"
}

sub-brute() {
while read sub; do
#	if host "$sun.$target" &> /dev/null; then
	echo "$sub.$target";
        done < $file | xargs -P50 -I x bash -c " if host x &> /dev/null;then
	echo x;
fi"
#done < $file
}

target=False
file=False
list=(
      banner
      sub-brute
      )
while [ -n "$1" ]; do
	case "$1" in
	-t)
		target=$2
		shift
		;;
	-f)
		file=$2
		shift
		;;
	-h)
		usage
		exit
		;;
	*)
		echo "[-] unknown option $1"
		usage
		exit
		;;
	esac
	shift
done
[[ $target == "False" ]] && [[ $file == "False" ]] && {
	echo "[-] Arguments: -t domain.com -f/--file filename.txt Required"
}
(
banner
sub-brute
)


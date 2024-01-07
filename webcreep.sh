#!/bin/bash
echo "Enter the url: "
read _url
if [ $_url ]

then
	select links in crawl_stuff dumb_dimetry random_lookups
	do
		case $links in
			crawl_stuff )
				proxychains4 cewl -d 5 -o -w webbing.txt $_url ;;

			dumb_dimetry )
				proxychains4 dmitry -i -w -n -s -e -p -f -b $_url ;;

			random_lookups )
				for command in proxychains4
				do
					$command nslookup --type=A $_url
					$command nslookup --type=CNAME $_url
					$command nslookup --type=MX $_url
					$command nslookup --type=TXT $_url
				done ;;

			* )
				echo "By3!!" ;;
		esac
	done
else
	echo "Err0r pr0cess!!"

fi


#Scripted by:~ P4p4m1dn1ght#

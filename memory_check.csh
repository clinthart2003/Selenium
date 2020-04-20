#!/bin/csh -f


#########################################################################
##                                                                     ##
##                                                                     ##
## Description: This script will aide in tracking memory leaks		   ##
##                                                                     ##
##                                                                     ##
#########################################################################

set filelist = (`\more $HOME/processfile`)
set date1 = 0
set proc = 0
set i = 0

foreach i ($filelist)
echo "Gathering process info "
	ps -ef -o vsz,rss,args | grep $i > leakfile.txt
	date > date.txt
	set vms = `grep "product" leakfile.txt |  awk '{print $1}'`
	set ress = `grep "product" leakfile.txt | awk '{print $2}'`
	set date1 = `more date.txt`
	echo "$date1 ,$vms ,$ress ,$i" >> $i.txt
	more $i.txt
	rm -rf date.txt
	rm -rf leakfile.txt

end

echo " "

## echo -n "Are you ready to create your combine file? (y/n): [y] "
	set ans = $1
	if ( $ans !~ [yY] ) then
		exit 0
	endif

foreach B ($filelist)
echo "Combining makefiles "
	cat $B.txt | sort -b +3 >> memFile.txt
end

foreach C ($filelist)
echo "Removing temp text files "
	rm -rf $C.txt
end





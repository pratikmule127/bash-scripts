#!/bin/bash


echo -n "Enter the Name: "
read name

if [ -h $name ]
then
	echo "It's a symlink"
else
	echo "Its not symlink"
fi

if [ -d $name ]
then
        echo "It's a dir"
else
        echo "Its not dir"
fi

if [ -s $name ]
then
        echo "Greator then 0 bytes"
else
        echo "less then 0 bytes"
fi

if [ -e $name ]
then    
    echo "file exists"
else
        echo "not exists"
fi

if [ -f $name ]
then
        echo "file already exisested"
else
        echo "Its not exist"
fi
if [ -w $name ]
then    
    	echo "It's a writabale file"
else
        echo "Its not writeable"
fi
if [ -r $name ]
then        
	echo "It's a readable file"
else
        echo "Its not readable"
fi

if [ -x $name ]
then
	echo "It's a exucatable file"
else
        echo "Its not exucatable"
fi



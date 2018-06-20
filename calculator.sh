#!/bin/bash


echo "Please select an option: "

select CALCOP in addition subtraction multiplication division

do 

case $CALCOP in 
addition|subtraction)
	echo "You selected addition or subtraction"
	
	;;
	
multiplication|division)
	echo "you selected multipication or division"
	;;
	
none)
	break
	;;
	
	*) echo "Error: Invalid selection"
	;;
esac
done 
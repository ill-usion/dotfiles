#! /bin/bash

function set_profile() {
	asusctl profile -P $1
}

case $1 in 
	"Q") set_profile Quiet ;;
	"B") set_profile Balanced ;;
	"P") set_profile Performance ;;
	*) echo "Invalid mode \`$1\`. Available modes: (Q)uiet, (B)alanced, (P)erformance"
esac

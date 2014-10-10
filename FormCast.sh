#!/bin/sh
BuildCast.pl "$1" "$2" "$3"
AddItem.pl $1 $3 `ls|tr '\n' ' '`

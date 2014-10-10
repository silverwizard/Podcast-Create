#!/bin/sh
BuildCast.pl $@
AddItem.pl $1 `ls|tr '\n' ' '`

#!/bin/sh

generic=/root/generic.sh

if [ -f $generic ]; then
   chmod a+x $generic
   $generic
fi

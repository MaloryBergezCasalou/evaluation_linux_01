#!/bin/bash

touch /tmp/out/lock
touch /tmp/out/log

for * in /tmp/in/
do
	if [-f $/tmp/in/* ]
	then
		gzip $/tmp/in/*
		mv /tmp/in/* /tmp/out/
		echo "le(s) fichier(s) " $/tmp/out/*"bien compresse(s)" >> /tmp/out/log
	fi

	if [ -e ${LOCKFILE} ] && kill -0 cat ${LOCKFILE}; then
    echo "Code : 22"
    exit
	fi

done

rm -rf /tmp/out/log
rm -rf /tmp/out/lock

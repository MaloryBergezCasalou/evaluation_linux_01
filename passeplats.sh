#!/bin/bash

touch /tmp/out/lock
touch /tmp/out/log

for * in /tmp/in/
do
	if [-f $/tmp/in/* ]
	then
		gzip $/tmp/in/*
		mv /tmp/in/* /tmp/out/
		echo "les fichiers " $/tmp/out/*"ont bien étés compresses" >> /tmp/out/log
	fi

done

rm -rf /tmp/out/lock

#!/bin/bash

touch /tmp/out/lock
touch /tmp/out/log

for fichiers in /tmp/in/*
do
	if [ -f $fichiers ]
	then
		gzip $fichiers
		mv /tmp/in/* /tmp/out/ 
		echo "les fichiers " $fichiers "ont bien étés compresses" >> /tmp/out/log
	fi

done

rm -rf /tmp/out/lock

#!/bin/bash

echo "SETTING UP BASH"

thisscript="$(readlink -f ${BASH_SOURCE[0]})"
thispath="$(dirname $thisscript)"
for component in $thispath/bash/*
do
	echo ...$(basename $component)
	source $component
done
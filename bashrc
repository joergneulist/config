#!/bin/bash

echo "SETTING UP BASH"

thisscript="$(readlink -f ${BASH_SOURCE[0]})"
thispath="$(dirname $thisscript)"
for component in $thispath/bash/*
do
	name=$(basename $component)
	case "$name" in
		~*)
			echo "(ignoring ${name#'~'})"
			;;
		*)
			echo "...$name"
			source $component
			;;
	esac
done


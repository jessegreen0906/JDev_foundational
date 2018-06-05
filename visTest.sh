#! /bin/bash

echo "Running Visual Tests";

if [[ -f ./node_modules/casperjs/bin/casperjs ]]; then
	if ! ./node_modules/casperjs/bin/casperjs test "$1"; then
		exit 1;
	fi
elif [[ -f ../casperjs/bin/casperjs ]]; then
	if ! ../casperjs/bin/casperjs test "$1"; then
		exit 1;
	fi
fi

echo "Visual Tests complete";
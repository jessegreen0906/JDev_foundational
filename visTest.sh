#! /bin/bash

echo "Running Visual Tests";

if [[ -f ./node_modules/casperjs/bin/casperjs ]]; then
	./node_modules/casperjs/bin/casperjs test "$1";
elif [[ -f ../casperjs/bin/casperjs ]]; then
	../casperjs/bin/casperjs test "$1";
fi

echo "Visual Tests complete";
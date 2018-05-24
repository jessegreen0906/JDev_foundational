#! /bin/bash

echo "Running Visual Tests";

if [[ -f ./node_modules/casperjs/bin/casperjs.js ]]; then
	./node_modules/casperjs/bin/casperjs.js test "$1";
elif [[ -f ../casperjs/bin/casperjs.js ]]; then
	../casperjs/bin/casperjs.js test "$1";
fi

echo "Visual Tests complete";
#! /bin/bash

echo "Running Unit Tests";

if [[ -f ./node_modules/jest/bin/jest.js ]]; then
	./node_modules/jest/bin/jest.js --config ./testing_configs/jest.config.json "$1";
elif [[ -f ../jest/bin/jest.js ]]; then
	../jest/bin/jest.js --config ./testing_configs/jest.config.json "$1";
fi

echo "Unit Tests complete";
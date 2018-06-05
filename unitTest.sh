#! /bin/bash

echo "Running Unit Tests";

if [[ -f ./node_modules/jest/bin/jest.js ]]; then
	if ! ./node_modules/jest/bin/jest.js --config ./testing_configs/jest.config.json; then
		exit 1;
	fi
elif [[ -f ../jest/bin/jest.js ]]; then
	if ! ../jest/bin/jest.js --config ./testing_configs/jest.config.json; then
		exit 1;
	fi
fi

echo "Unit Tests complete";
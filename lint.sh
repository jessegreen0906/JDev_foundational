#! /bin/bash

echo "Running linting";
echo `pwd`;
#sass-lint --config ./linting_configs/.html-linter.json "$1";


#./node_modules/html-linter/bin/html-linter.js --config ./linting_configs/.html-linter.json "$1";

if [[ -f ./node_modules/sass-lint/bin/sass-lint.js ]]; then
	./node_modules/sass-lint/bin/sass-lint.js --config ./linting_configs/.scss-lint.yml "$2";
elif [[ -f ../sass-lint/bin/sass-lint.js ]]; then
	../sass-lint/bin/sass-lint.js --config ./linting_configs/.scss-lint.yml "$2";
fi
./node_modules/eslint/bin/eslint.js --config ./linting_configs/.eslintrc.json "$3";

echo "Linting complete";
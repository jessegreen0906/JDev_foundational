#! /bin/bash

echo "Running linting";

echo "Running HTML linting";
if [[ -f ./node_modules/html-linter/bin/html-linter.js ]]; then
	./node_modules/html-linter/bin/html-linter.js -v --config ./linting_configs/.html-linter.json "$1";
elif [[ -f ../html-linter/bin/html-linter.js ]]; then
	../html-linter/bin/html-linter.js -v --config ./linting_configs/.html-linter.json "$1";
fi

echo "Running SASS linting";
if [[ -f ./node_modules/sass-lint/bin/sass-lint.js ]]; then
	echo "$2";
	./node_modules/sass-lint/bin/sass-lint.js -v --config ./linting_configs/.scss-lint.yml "$2";
elif [[ -f ../sass-lint/bin/sass-lint.js ]]; then
	echo "$2";
	../sass-lint/bin/sass-lint.js -v --config ./linting_configs/.scss-lint.yml "$2";
fi

echo "Running JS linting";
if [[ -f ./node_modules/eslint/bin/eslint.js ]]; then
	./node_modules/eslint/bin/eslint.js -v --config ./linting_configs/.eslintrc.json "$3";
elif [[ -f ../eslint/bin/eslint.js ]]; then
	../eslint/bin/eslint.js -v --config ./linting_configs/.eslintrc.json "$3";
fi

echo "Linting complete";
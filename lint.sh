#! /bin/bash

echo "Running linting";
echo pwd;
./node_modules/html-linter/bin/html-linter.js --config ./linting_configs/.html-linter.json "$1";
echo pwd;
./node_modules/sass-lint/bin/sass-lint.js --config ./linting_configs/.scss-lint.yml "$2";
./node_modules/eslint/bin/eslint.js --config ./linting_configs/.eslintrc.json "$3";

echo "Linting complete";
#! /bin/bash

echo "Running linting";

echo "Running HTML linting";
if [[ -f ./node_modules/html-linter/bin/html-linter.js ]]; then
	if ! ./node_modules/html-linter/bin/html-linter.js -v --config ./linting_configs/.html-linter.json "$1"; then
		exit 1;
	fi
elif [[ -f ../html-linter/bin/html-linter.js ]]; then
	if ! ../html-linter/bin/html-linter.js -v --config ./linting_configs/.html-linter.json "$1"; then
		exit 1;
	fi
fi

echo "Running SASS linting";
if [[ -f ./node_modules/sass-lint/bin/sass-lint.js ]]; then
	if ! ./node_modules/sass-lint/bin/sass-lint.js -v --config ./linting_configs/.scss-lint.yml "$2"; then
		exit 1;
	fi
elif [[ -f ../sass-lint/bin/sass-lint.js ]]; then
	if ! ../sass-lint/bin/sass-lint.js -v --config ./linting_configs/.scss-lint.yml "$2"; then
		exit 1;
	fi
fi

echo "Running JS linting";
if [[ -f ./node_modules/eslint/bin/eslint.js ]]; then
	if ! ./node_modules/eslint/bin/eslint.js --ignore-pattern **/ext-lib/**/*.js --config ./linting_configs/.eslintrc.json "$3"; then
		exit 1;
	fi
elif [[ -f ../eslint/bin/eslint.js ]]; then
	if ! ../eslint/bin/eslint.js --ignore-pattern **/ext-lib/**/*.js --config ./linting_configs/.eslintrc.json "$3"; then
		exit 1;
	fi
fi

echo "Linting complete";
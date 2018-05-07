<h1>Overview</h1>
<p>The purpose of this git repository is to provide a kickstart for any projects I work on.</p>

<h1>Usage</h1>
<p>Feel free to use or modify the code stored in this repository freely for personal, academic or non-profit use. All rights are withheld by the author (Jesse Green) as regards use for commercial use.</p>
<p>The author takes no responisibility for the effects of using this code regardless of context. As always, if you're bringing third party code into your project accept it as a risk or take the time to know what it does.</p>

<h1>Installation</h1>
<p>This repository is intended to be used with NPM. </p>

<p>Within your package.json file, add the following dev-dependency.</p>

`"jdev_foundational": "git+https://github.com/jessegreen0906/JDev_foundational.git"`

<p>From the command line, in the same folder as your package.json file run the following command.</p>

`npm install`

<h1>Running</h1>

<h2>Linting</h2>
<h3>Running from the command line</h3>
<p>The lint command must be run from the jdev_foundational directory located in your node_modules folder. From your project root directory change to your jdev_foundational folder.</p>

`cd ./node_modules/jdev_foundational`

<p>Now run the lint command</p>

`npm run lint <html-lint-target> <sass-lint-target> <es-lint-target>`

<p><b>NOTE: </b>Arguments you pass for html-lint-target, sass-lint-target and es-lint-target must be relative to your current directory.</p>
<p>E.g.</p>

`npm run lint ../../src/**/*.html ../../src/**/*.scss ../../src/**/*.js`

<h3>Running as an NPM command</h3>
<p>As with running from the command line, the lint command must be run from the jdev_foundational directory.</p>
<p>In your project's package.json file add the following under scripts</p>

`"scripts": {
 		"lint": "cd ./node_modules/jdev_foundational/ && npm run lint -- <html-lint-target> <sass-lint-target> <es-lint-target>"
 }`

<p><b>NOTE: </b>As with running from the command line (see above) the target arguments must be relative paths from the jdev_foundational directory.</p>
<p>E.g.</p>

`"scripts": {
 		"lint": "cd ./node_modules/jdev_foundational/ && npm run lint -- ../../src/**/*.html ../../src/**/*.scss ../../src/**/*.js"
 }`

const path = require('path');

module.exports = {
	mode: "development",
	
	entry: {
		// Add a seperate entry point for each application.
		test: './src/example.js'
	},
	output: {
		path: path.resolve(__dirname, '../../../build'),
		filename: "[name].bundle.js"
	}
	
};
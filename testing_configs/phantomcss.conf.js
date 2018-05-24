var args = {
rebase: casper.cli.get('rebase'),
	
	screenshotRoot: './tests/visual_tests/screenshots/baseline',
	failedComparisonsRoot: './tests/visual_tests/screenshots/failures',
	comparisonResultRoot: './tests/visual_tests/screenshots/baseline',
	
	addIteratorToImage: false,
	cleanupComparisonImages: true,
	
	failOnCaptureError: false
};

exports.conf = args;
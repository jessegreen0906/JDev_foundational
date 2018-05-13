module.exports = function(grunt) {
	
	grunt.initConfig({
		// Compile Sass to CSS
		sass: {
			dist: {
				files: [{
					expand: true,
					cwd: 'src/',
					src: ['**/*.scss'],
					dest: 'src/',
					ext: '.css'
				}]
			}
		},
		
		// Move static resources to build directory
		copy: {
			main: {
				files: [
					{expand: true, cwd: 'src/', src: ['**/*.html', '**/*.css', '**/*.js', 'assets/**/*.*'], dest: 'build/'},
				]
			}
		}
	});
	
	grunt.loadNpmTasks('../node_modules/grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-copy');
	
	grunt.registerTask('default', ['sass','copy']);
	grunt.registerTask('compile-sass', ['sass']);
	grunt.registerTask('copy-assets', ['copy']);
};
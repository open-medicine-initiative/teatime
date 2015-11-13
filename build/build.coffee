# The master build file aggregates all separate build files

require './build.testing.coffee'
require './build.qa.coffee'

# Dependencies for main build

chalk = require 'chalk'
gulp = require 'gulp'


showHelp = ->
	console.log '#################################################'
	console.log 'Welcome to the OPENMEDiAID REST API build system!'
	console.log '#################################################'
	console.log 'The default task shows this screen.'
	console.log 'For a list of available tasks please run: ' + chalk.magenta ('gulp --tasks\n')
	console.log 'Please have a look at the README.md at the projects root folder for more information'
	console.log 'Please have a look at the README.md at the projects root folder for more information on the project structure and links to helpful resources'
showHelp.description = 'Show help'

gulp.task 'default', showHelp
gulp.task 'help', showHelp




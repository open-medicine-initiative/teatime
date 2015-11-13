Coffee table
============

Coffee table is a setup of various JavaScript technologies, ready to be used as a basis for implementing server side JavaScript modules. This template integrates [Babel](https://babeljs.io/) and [CoffeeScript](http://coffeescript.org/) transpilers such that modules can be written and tested in either of both languages.

The build system is [Gulp 4](https://github.com/gulpjs/gulp/tree/4.0) and build files are written in CoffeeScript ( UNBIASED sidenote: because this is what build files should look like :)

[Mocha](https://mochajs.org/) is used as test runner and [Chai](http://chaijs.com/) is the preferred tool for specifying assertions. It is exposed in `global` context so that tests don't need to `require(...)`

Gulp watchers are used to provide automatic re-execution of tests whenever a file (spec or module) changed. Using Gulp 4 it is even quite simple to only re-transpile the source files that have actually changed. This incremental re-transpilation is very handy because having babel and coffee in the stack does incurr quite some overhead.

To install and run (zero) tests:

	$ npm install gulpjs/gulp-cli#4.0 -g
	$ npm install
	$ npm test

This will download and install all required dependencies and make gulp run the tests. Since there are no files under `src` it will just give a green light indicating that everything was fine and none of the zero tests failed.


Tutorial
--------

Let's assume we have the folling (dumb) module written in ES7 style JavaScript
The module is `src/invert.js`:

```js
'use strict';

export function invert(bool) {
	console.log (`${bool} inverted is ${!bool}`);
	return !bool;
}
```

Of course we also write a test and place it right next to the model (YES, that is good style...)
The test file is `src/invert.spec.coffee`:

```coffee
invert = require('./invert').invert

describe 'inversion of booleans', ->
	it 'should return the inverted values', ->
		expect( invert false ).to .equal true
```

Running tests will now pick up the spec.coffee, transpile it and feed it to mocha for execution

	$ npm test


Againg, green lights. This time with an actual test run.

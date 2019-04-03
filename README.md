## Final Practice

<br />
<br />

This is a chance for you to practice your final and help me test my process management fix at the same time. A number of you got gateway errors when you tried to demo your sites Monday night. This fixes that problem by using node.js and pm2 for process management. 

Wordpress runs using php as a backend. Node.js is a competing back end that uses Javascript rather than php code. Most programming languages have a package manager for installing pre-made code objects or modules into a run-time environment. Php's package manager is called composer. Node's is called npm. Composer, unfortunately, doesn't include process management. Node's npm does.

Npm is controlled by a `package.json` file:

```
{
    "name": "mar18-project-start",
    "version": "1.0.0",
    "description": "wordpress site",
    "main": "index.php",
    "scripts": {
        "start": "pm2 start index.js",
        "log": "pm2 log",
        "stop": "pm2 delete all",
        "test": "echo \"Error: no test specified\" && exit 1"
    },
    "repository": {
        "type": "git",
        "url": "git+https://github.com/rhildred/wordpress-heroku.git"
    },
    "keywords": [
        "php",
        "pm2"
    ],
    "author": "Rich Hildred",
    "license": "MIT",
    "bugs": {
        "url": "https://github.com/rhildred/wordpress-heroku/issues"
    },
    "homepage": "https://github.com/rhildred/wordpress-heroku#readme",
    "dependencies": {
        "pm2": "^3.4.1"
    }
}


```

The important part of the `package.json` file for process management is the `scripts` portion:

```

    "scripts": {
        "start": "pm2 start index.js",
        "log": "pm2 log",
        "stop": "pm2 delete all",
        "test": "echo \"Error: no test specified\" && exit 1"
    },


```

We are using pm2 for process management and we have implemented:

|Command|What it Does|
|---|---|
|start|starts the index.js in the current folder|
|log|continuously displays the log files in the current terminal window. Note* to see the logs type `npm run log` (long story)|
|stop|stops all of the running processes for a fresh `start`|
|test|unimplemented for now|

To get started using wordpress in the current folder start a terminal and type:

1. `npm install` (first time only)
2. `npm stop` to stop any previous instances of Wordpress
3. `npm start` to run the instance of Wordpress in the current folder.

I will retrofit all of your other week's wordpresses so that they work the same way and you can refer back to them. Have fun practicing for the exam. 

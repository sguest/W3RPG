let path = require('path');
let fs = require('fs');

//ugly and inefficient but MORE than good enough for the task at hand
let contents = fs.readFileSync(path.resolve(__dirname, 'dist/main.lua'), 'utf-8').split('\n');
contents.pop();
contents.pop();
fs.writeFileSync(path.resolve(__dirname, 'dist/main.lua'), contents.join('\n'), 'utf-8');
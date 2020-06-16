let path = require('path');
let fs = require('fs');

//ugly and inefficient but MORE than good enough for the task at hand
let outFile = path.resolve(__dirname, 'dist/main.lua');
let customContents = fs.readFileSync(outFile, 'utf-8').split('\n');
customContents.pop();
customContents.pop();
let mapFile = path.resolve(__dirname, 'Map.w3x/war3map.lua');
let mapContents = fs.readFileSync(mapFile, 'utf-8').split('\r\n');
let outContents = '';
let foundStart = false;
let foundEnd = false;
for(let line of mapContents) {
    if(!foundStart) {
        outContents += line + '\r\n';
        if(line === '--Start custom code') {
            foundStart = true;
            outContents += customContents.join('\r\n') + '\r\n';
        }
    }
    else if(!foundEnd) {
        if(line === '--End custom code') {
            foundEnd = true;
            outContents += line + '\r\n';
        }
    }
    else {
        outContents += line + '\r\n';
    }
}
fs.writeFileSync(mapFile, outContents, 'utf-8');
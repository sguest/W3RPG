let path = require('path');
let fs = require('fs');

if(process.argv.length < 4) {
    console.log('Error, missing required argument');
    console.log('Usage: node build <rootFile> <outputfile>');
}

let rootFilePath = process.argv[2];
let outputFilePath = process.argv[3];

let rootFolder = path.resolve(path.dirname(rootFilePath));
let rootFile = path.basename(rootFilePath);

let processStack = [rootFile];
let nodes = {};
let unresolvedChildren = {};
let leafNodes = [];

while(processStack.length) {
    let currentFile = processStack.shift();

    if(!nodes[currentFile]) {
        let currentNode = {
            path: currentFile,
            parents: [],
            children: [],
        }
        let content = fs.readFileSync(path.resolve(rootFolder, currentFile), 'utf-8');
        let hasImports = false;

        while(content.substring(0, 6) === 'import') {
            hasImports = true;
            let newlineIndex = content.indexOf('\n');
            if(newlineIndex === -1) {
                newlineIndex = content.length;
            }
            let importStatement = content.substring(0, newlineIndex);
            content = content.substring(newlineIndex + 1);

            let importParsed = /import\s*"\/?([^"]*)"/.exec(importStatement);
            if(!importParsed) {
                console.log(`could not resolve import ${importStatement} in ${currentFile}`);
            }

            let childPath = importParsed[1];
            if(nodes[childPath]) {
                currentNode.children.push(nodes[childPath]);
                nodes[childPath].parents.push(currentNode);
            }
            else {
                unresolvedChildren[childPath] = unresolvedChildren[childPath] || [];
                unresolvedChildren[childPath].push(currentNode);
                processStack.push(childPath);
            }
        }

        currentNode.content = content;

        if(!hasImports) {
            leafNodes.push(currentNode);
        }

        if(unresolvedChildren[currentFile]) {
            for(let node of unresolvedChildren[currentFile]) {
                node.children.push(currentNode);
                currentNode.parents.push(node);
            }
        }

        nodes[currentFile] = currentNode;
    }
}

let fileContents = '';

while(leafNodes.length) {
    let node = leafNodes.shift();
    fileContents += '// ' + node.path + '\n';
    fileContents += node.content + '\n';

    for(let parent of node.parents) {
        parent.children.splice(parent.children.indexOf(node), 1);

        if(!parent.children.length) {
            leafNodes.push(parent);
        }
    }
}

fs.writeFileSync(outputFilePath, fileContents, 'utf-8');
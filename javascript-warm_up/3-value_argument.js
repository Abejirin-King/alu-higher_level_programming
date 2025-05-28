#!/usr/bin/node

const firstArg = process.argv.slice(2).shift();

if (firstArg) {
  console.log(firstArg);
} else {
  console.log('No argument');
}


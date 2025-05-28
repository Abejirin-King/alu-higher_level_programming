#!/usr/bin/node

const arg = process.argv[2];
const num = Number(arg);

if (!isNaN(num)) {
  if (num % 1 === 0) {
    console.log(`My number: ${num}`);
  } else {
    console.log('Not a number');
  }
} else {
  console.log('Not a number');
}


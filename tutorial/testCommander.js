/*

What is the purpose of this test?

Set the input and output files for extractSQL.js using CLI
rather than inside the actual file.

*/

import {program} from "commander";

program
  .option('-i, --input <string>')
  .option('-o, --output <string>');

program.parse();

const options = program.opts();

// console.log(options)

if(Object.keys(options).length == 0){
  program.help()
}
if(!"input" in Object.keys(options)){
  console.log("ERROR: Missing input file")
  process.exit();
}
if(!"output" in Object.keys(options)){
  console.log("ERROR: Missing output file")
  process.exit();
}
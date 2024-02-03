import fs from 'fs';
import {program} from "commander";
import { format } from 'sql-formatter';

// Process CLI Arguments
program
  .option('-i, --input <string>')
  .option('-o, --output <string>');
program.parse();
const options = program.opts();
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

let sql_data = fs.readFileSync(options.input)

const sql_data_removed_comments = String(sql_data).replace(/^--.*\r?\n?/gm, '');

let formatted_sql = format(sql_data_removed_comments, { language: 'sqlite' })

console.log(formatted_sql)

fs.writeFileSync(options.output, formatted_sql);

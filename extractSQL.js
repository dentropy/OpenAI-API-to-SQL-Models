import fs from 'fs';
import {program} from "commander";

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

let rawdata = JSON.parse(fs.readFileSync(options.input));


const regex = /```(.*?)```/gs;

let final_text = ""
for(let item of rawdata){
    const matches = item.content.match(regex);
    if (matches) {
        let extractedTexts = matches.map(match => 
            match.replace(/```/gs).replace(/'s/g, "`s")
        );
        extractedTexts = String(extractedTexts)
        extractedTexts = extractedTexts.split('\n')
        extractedTexts.shift()
        extractedTexts.pop()
        console.log(extractedTexts)
        final_text += extractedTexts.join("\n") + "\n"
    } else {
        console.log("No matches found");
    }
}
fs.writeFileSync(options.output, final_text);

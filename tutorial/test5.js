/*

What is the purpose of this test?

Ask a root question then as the same question over and over again saving the output each time to a JSON file

*/

import OpenAI from "openai";
import fs from 'fs';

const openai = new OpenAI();

let model_name =  'gpt-3.5-turbo-1106' //'gpt-3.5-turbo',
let root_prompt =  "Give me a SQL schema for describing the lifecycle of Archetype"
let recursive_prompt = "Please write a bunch of example insert statements for the Archetype table?"





let root_message = { 
    role: 'user', 
    content: root_prompt
}

let recursive_message = { 
    role: 'user', 
    content: recursive_prompt
}

let messages = [root_message]

function zeroPad(number, length) {
    return String(number).padStart(length, '0');
}

async function main() {
    let output_path = "./test5"
    fs.mkdirSync(`${output_path}`, { recursive: true });

    console.log("Sending first query to OpenAI")
    const root_response = await openai.chat.completions.create({
        messages: messages,
        model: model_name
    });
    // console.log(JSON.stringify(root_response, null, 2))
    // console.log(JSON.stringify(root_response.choices[0].message, null, 2))
    messages.push(root_response.choices[0].message)
    messages.push(recursive_message)
    var filename = `${output_path}/setup.json`
    fs.writeFileSync(filename, JSON.stringify(messages, null, 2));
    console.log(`Writing ${filename}`)

    for(var i = 0; i < 100; i++){
        let next_response = await openai.chat.completions.create({
            messages: messages,
            model: model_name,
        });
        messages.push(next_response.choices[0].message)
        messages.push(recursive_message)
        var filename = `${output_path}/response_${zeroPad(i, 3)}.json`
        fs.writeFileSync(filename, JSON.stringify(messages, null, 2));
        console.log(`Writing ${filename}`)
    }
}

main();
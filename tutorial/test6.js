/*

What is the purpose of this test?

Ask a series of setup prompts then as the same question over and over again saving the output each time to a JSON file

*/



import OpenAI from "openai";
import fs from 'fs';

const openai = new OpenAI();

// [Models - OpenAI API](https://platform.openai.com/docs/models/gpt-4-and-gpt-4-turbo)

// let model_name =  'gpt-3.5-turbo' // 4,096 tokens
// let model_name = 'gpt-4'// 8,192 tokens
let model_name = 'gpt-3.5-turbo-1106' // 16,385 tokens
// let model_name = 'gpt-4-0125-preview'// 128,000 tokens

// let setup_prompts =  [
//     "Give me a SQL schema for describing the lifecycle of Archetype",
//     "Generate example insert data for each SQL table"
// ]

let setup_prompts = [
    `Give me a SQL schema for "The Self"`,
    "Please populate each table with insert statements"
]
let recursive_prompt = "Please write a bunch more example insert statements for the PsychologicalTraits table"

let number_of_response_loops = 100

let recursive_message = { 
    role: 'user', 
    content: recursive_prompt
}

function zeroPad(number, length) {
    return String(number).padStart(length, '0');
}

async function main() {
    let output_path = "./test6"
    fs.mkdirSync(`${output_path}`, { recursive: true });
    

    let setup_messages = []
    for (let setup_prompt of setup_prompts) {
        setup_messages.push(
            { 
                role: 'user', 
                content: setup_prompt
            }
        )
    }

    // console.log("\n\n\n")
    // console.log(JSON.stringify(setup_messages, null, 2))
    // console.log("\n\n\n")

    let assistant_content_list = []

    let messages = []
    for (let user_msg_count = 0; user_msg_count < setup_messages.length; user_msg_count++ ){
        let tmp_setup_messages = []
        for (let i = 0; i < assistant_content_list.length + 1; i++) {
            tmp_setup_messages.push(setup_messages[i])
            if( assistant_content_list.length != 0 && i != user_msg_count){
                tmp_setup_messages.push(assistant_content_list[i])
            }
        }
        let next_response = await openai.chat.completions.create({
            messages: tmp_setup_messages,
            model: model_name,
        });
        assistant_content_list.push(next_response.choices[0].message)
        tmp_setup_messages.push(next_response.choices[0].message)
        messages = tmp_setup_messages
        var filename = `${output_path}/setup_${zeroPad(user_msg_count, 3)}.json`
        fs.writeFileSync(filename, JSON.stringify(messages, null, 2));
        console.log(`Writing ${filename}`)

    }



    for(var i = 0; i < number_of_response_loops; i++){
        messages.push(recursive_message)
        let next_response = await openai.chat.completions.create({
            messages: messages,
            model: model_name,
        });
        messages.push(next_response.choices[0].message)
        var filename = `${output_path}/response_${zeroPad(i, 3)}.json`
        fs.writeFileSync(filename, JSON.stringify(messages, null, 2));
        console.log(`Writing ${filename}`)
    }


}

main();
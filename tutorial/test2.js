
/*

What is the purpose of this test?

To set a custom prompt and get GPT3 to respond

*/


import OpenAI from "openai";

const openai = new OpenAI();

let prompt = 'Tell me about the philsopher Plato' 

async function main() {
    const chatCompletion = await openai.chat.completions.create({
        messages: [
            { 
                role: 'user', 
                content: prompt
            }
        ],
        model: 'gpt-3.5-turbo',
      });
    console.log(JSON.stringify(chatCompletion, null, 2))
}

main();
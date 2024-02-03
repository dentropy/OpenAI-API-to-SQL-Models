
/*

What is the purpose of this test?

Get OpenAI to return anything

*/

import OpenAI from "openai";

const openai = new OpenAI();

async function main() {
    const chatCompletion = await openai.chat.completions.create({
        messages: [{ role: 'user', content: 'Say this is a test' }],
        model: 'gpt-3.5-turbo',
      });
    console.log(JSON.stringify(chatCompletion, null, 2))
}

main();
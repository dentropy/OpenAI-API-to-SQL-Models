/*

What is the purpose of this test?

Queue up a bunch of user prompts then get GPT3 to respond as each of appended to each GPT3 response

*/

import OpenAI from "openai";

const openai = new OpenAI();


async function main() {
    let user_content_list = [
        { 
            role: 'user', 
            content: 'Tell me about the philsopher Plato' 
        },
        {
            role: 'user', 
            content: 'Tell me about Plato\'s favorite debates' 
        }
    ]
    
    let assistant_content_list = []



    for (let user_msg_count = 0; user_msg_count < user_content_list.length; user_msg_count++ ){

        // console.log("\nuser_msg_count")
        // console.log(user_msg_count)

        let messages = []
        
        // console.log("\nassistant_content_list.length")
        // console.log(assistant_content_list.length)

        for (let i = 0; i < assistant_content_list.length + 1; i++) {
            messages.push(user_content_list[i])

            // console.log("DANGIT")
            // console.log(user_msg_count)
            // console.log(i)
            // console.log(i == user_msg_count)
            // console.log(i != user_msg_count)
            if( assistant_content_list.length != 0 && i != user_msg_count){
                messages.push(assistant_content_list[i])
            }
        }

        console.log("\nmessages")
        console.log(JSON.stringify(messages, null, 2))
        
        assistant_content_list.push(
            {
                "role": "assistant",
                "content": "Plato was an ancient Greek philosopher who lived from 427 to 347 BCE."
            }
        )
        // console.log("\nassistant_content_list")
        // console.log(assistant_content_list)
    
        // const chatCompletion = await openai.chat.completions.create({
        //     messages: [
        //         { 
        //             role: 'user', 
        //             content: 'Tell me about the philsopher Plato' 
        //         }
        //     ],
        //     model: 'gpt-3.5-turbo',
        // });
        // console.log(JSON.stringify(chatCompletion, null, 2))
    }



}

main();
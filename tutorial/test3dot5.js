/*

What is the purpose of this test?

To feed the response from test2.js back into GPT3 and then get GPT3 to respond again to itself

*/


import OpenAI from "openai";

const openai = new OpenAI();

async function main() {
    const chatCompletion = await openai.chat.completions.create({
        messages: [
            { 
                role: 'user', 
                content: 'Tell me about the philsopher Plato' 
            },
            {
                "role": "assistant",
                "content": "Plato was an ancient Greek philosopher who lived from 427 to 347 BCE. He was a student of Socrates and the teacher of Aristotle, and he is considered one of the most important figures in the history of Western philosophy.\n\nPlato founded the Academy in Athens, which was one of the first institutions of higher learning in the world. His writings are in the form of dialogues, with Socrates often featuring as the main character. Plato's philosophy covers a wide range of topics, including ethics, politics, metaphysics, epistemology, and aesthetics.\n\nOne of Plato's central beliefs was that there is a realm of ideal forms or concepts that exist beyond the physical world. According to Plato, the physical world is merely a shadow or imperfect reflection of these ideal forms. This concept is best illustrated in his famous Allegory of the Cave, where prisoners are chained in a cave and perceive only the shadows on the wall, mistaking them for reality.\n\nPlato's theory of forms also informed his ethical views. He argued that true knowledge can only be gained through reason and contemplation of the ideal forms. In his ethical theory, he proposed that the ultimate good is to achieve wisdom and strive for the ideal form of justice.\n\nPlato had a utopian vision for society and believed in an ideal state governed by philosopher-kings. He argued that philosophers, due to their pursuit of wisdom, are best equipped to rule and make decisions for the benefit of the whole society. This idea is presented in his influential work \"The Republic.\"\n\nPlato's ideas have had a profound influence on Western philosophy and continue to be studied and debated today. His works have been the subject of countless interpretations and have shaped many subsequent philosophical traditions. Overall, Plato's philosophy stands as a testament to his enduring insight and intellectual legacy."
            }
        ],
        model: 'gpt-3.5-turbo',
      });
    console.log(JSON.stringify(chatCompletion, null, 2))
}

main();
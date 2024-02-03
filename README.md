## OpenAI API Tutorial + LLM Recursive SQL Data Generation

## Description

In this repo we have example scripts using python and javascript to get your started prompting OpenAI's LLM's such as GPT3.5 and GPT4. We then use everything we learned from the tutorial to recursively prompt an OpenAI LLM to first generate a SQL Schema and populate it with data.

## Tutorial

* See [tutorial](./docs/tutorial.md)

#### Goals

1. Provide a series of prompts logging each response to a LLM then recusively repeat another prompt over and over again until the context length is full and you get an error.
2. Use the result of step one to first, generate a SQL Schema, then recursively prompt the LLM to generate data into the SQL Schema
3. Extract the SQL from the chat logs from step 2 and put them into an actual SQL database


#### Requirements

* nodejs + npm
* OpenAI API Key


#### Steps

**npm install**

``` bash

npm install

```

**Set OpenAI API Key in your envrionment**

``` bash

export OPENAI_API_KEY=sk-ENTROPYMOREENTROPYANDMOREENTROPY

```

**OPTIOANL: Update the prompts at the top of promptLLM.js**

Check out [Setup Prompts](./docs/setup_prompts.md) for more examples

Here is the default example
``` javascript

let setup_prompts = [
    `Give me a SQL schema for a CMS(Customer Management System)`,
    "Please populate each table with insert statements"
]

```

**Run promptLLM.js**

``` bash

node promptLLM.js

```

**Check resulting chat logs**

You should see a folder titled llm-out-at-$SOME_NUMBER and inside it should be a bunch of JSON files.

**Extract SQL from chat logs**

``` bash

export RUN_UNIX_TIME=1707428498
export CHAT_LOG_FILE=$(ls ./llm-out-at-$RUN_UNIX_TIME/ -t | head -n1)

node extractSQL.js \
 -i ./llm-out-at-$RUN_UNIX_TIME/$CHAT_LOG_FILE \
 -o ./llm-out-at-$RUN_UNIX_TIME/raw.sql

# Optional Not Required
node formatSQL.js \
 -i ./llm-out-at-$RUN_UNIX_TIME/raw.sql \
 -o ./llm-out-at-$RUN_UNIX_TIME/formatted.sql

```

**Create SQLite Database**


``` bash

sqlite3 my_database.db < ./llm-out-at-$RUN_UNIX_TIME/raw.sql

```
**Dump sql file**


#### TODO

* CLI
* Add message improt
* Make the output folder use a custom name, and include the model that ran the test, also maybe hash the first couple prompts so I have custom ID

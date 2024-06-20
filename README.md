## RAG_ollama_LangChain_flask_chatbotWeb
This website uses Flask as the server and runs in a Docker environment. 
I've already uploaded the Docker image on Docker Hub, so you can download it to try it out.

Since ollama doesn't have a web server available, which means all interaction with ollama happens through the command line or terminal, 
I've created this website using JavaScript, HTML, CSS, Flask, and Jinja2 to make LLM more user-friendly.

Key features of this website include:
*   Default prompt engineering with three selectable modes:
    *   Personal lover
    *   Personal teacher
    *   Personal officer
*   Integration of LangChain with Ollama for diverse applications.
*   Utilization of Flask, Jinja2, and JavaScript for the frontend.
*   Experience the latest Llama3 model.

## 目錄Table of Contents
- [Docker](#Docker)
- [Using RAG to upload pdf with LangChain](#Using-RAG-to-upload-pdf-with-LangChain)
- [Using LangChain to make LLM as a personal lover](#Using-LangChain-to-make-LLM-as-a-personal-lover)
- [Using LangChain to make LLM as a personal teacher](#Using-LangChain-to-make-LLM-as-a-personal-teacher)
- [Using LangChain to make LLM as a personal officer](#Using-LangChain-to-make-LLM-as-a-personal-officer)
- [Using chinese model](#Using-chinese-model)

## Docker
This is the image I used. <br />
[weitsung50110/rag_ollama_flask_chatbotweb](https://hub.docker.com/repository/docker/weitsung50110/rag_ollama_flask_chatbotweb/general)

when you run this docker image there're server things you need to aware of:
#### 1. the comment is like this, the port you can change to the port you like.

    docker run -d -v ollama:/root/.ollama -v D:\nlp_ollama_flask_github:/app \
    -p 11434:11434 -p 5000:5000 --name ollama_github weitsung50110/rag_ollama_flask_chatbotweb:1.4

I have written the tutorial about how to use docker ports, you can refer to it. <br />
[llama_flask_langchain_ChatbotWeb #Port端口 -p 講解教學 很重要](https://github.com/weitsung50110/llama_flask_langchain_ChatbotWeb?tab=readme-ov-file#port%E7%AB%AF%E5%8F%A3--p-%E8%AC%9B%E8%A7%A3%E6%95%99%E5%AD%B8-%E5%BE%88%E9%87%8D%E8%A6%81)

#### 2. When your container already start sucessfully, you can go inside the container.
I alredy put all the files in /app., so when you run `exec -it`, you don't need to go to other folder.

    docker exec -it ollama_github /bin/bash

#### 3. Run the server
There are several files in app I put in, the server file called **app.py**.

    python3 app.py

Because this image in install the python3's version, not just python, so when you leave comment you need to make sure it's pyhton3 not python.

#### 4. Work successfully
If you saw the logs below which means it works successfully, and you can connect to the website immediately.

    root@288472de1acb:/app# python3 app.py
     * Serving Flask app 'app'
     * Debug mode: on
    INFO:werkzeug:WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on all addresses (0.0.0.0)
     * Running on http://127.0.0.1:5000
     * Running on http://172.17.0.2:5000
    INFO:werkzeug:Press CTRL+C to quit
    INFO:werkzeug: * Restarting with watchdog (inotify)
    WARNING:werkzeug: * Debugger is active!
    INFO:werkzeug: * Debugger PIN: 180-311-059
    INFO:werkzeug:172.17.0.1 - - [19/Jun/2024 04:02:13] "GET /stream HTTP/1.1" 200 -
    INFO:werkzeug:172.17.0.1 - - [19/Jun/2024 04:02:13] "GET /stream HTTP/1.1" 200 -

#### Main page
![](https://github.com/weitsung50110/RAG_ollama_flask_chatbotWeb/blob/main/github_imgs/0.png)

#### Using RAG to upload pdf with LangChain 
To upload pdf file and ask question on my website, and the llama3 will be able to make respond.
![](https://github.com/weitsung50110/RAG_ollama_flask_chatbotWeb/blob/main/github_imgs/1.png)

      🤔 «中國醫藥大學附設醫院、高雄榮民總醫院、高雄醫學大學附設中和紀念醫院、台中榮民總醫院四家醫院各有獎牌一只。» Translation: "The Chinese Medical University Affiliated Hospital, Kaohsiung Veterans General Hospital, Kaohsing Medical University Affiliated Zhong-Shan Memorial Hospital, and Taichung Veterans General Hospital each has one award plaque." 🏆

#### Using LangChain to make LLM as a personal lover
![](https://github.com/weitsung50110/RAG_ollama_flask_chatbotWeb/blob/main/github_imgs/5.png)

      AI : My love, I am your personal lover, here to fulfill all your desires and bring joy to your heart. My name is whispered in sweet nothings by the wind, and my touch can ignite a fire that burns bright and true. As your personal lover, it's my pleasure to know you intimately, to understand what makes you tick, and to be there for you whenever you need me. Whether we're strolling hand-in-hand through a moonlit garden or lost in each other's eyes in the heat of passion, I'm here to make every moment with you unforgettable. So, my love, tell me... what is it that you desire most from our time together?

#### Using LangChain to make LLM as a personal teacher
![](https://github.com/weitsung50110/RAG_ollama_flask_chatbotWeb/blob/main/github_imgs/6.png)

      AI : I'm delighted to introduce myself! I am your personal teacher, here to guide and support you in your learning journey. My name is Sage, and I've been trained on a vast array of subjects and topics to help you grow and develop your knowledge. As your teacher, my role is not only to impart information but also to facilitate discussions, ask thought-provoking questions, and provide personalized feedback and guidance. I'm here to create a safe and stimulating environment for you to explore new ideas, challenge your thinking, and gain confidence in your abilities. So, what would you like to learn or discuss today?

#### Using LangChain to make LLM as a personal officer
![](https://github.com/weitsung50110/RAG_ollama_flask_chatbotWeb/blob/main/github_imgs/7.png)

      AI : Good day, sir! I am Officer Thompson, your loyal and trusted personal officer. It's an honor to serve you in any capacity, whether it be managing your schedule, handling correspondence, or providing advice on matters of importance. My sole purpose is to ensure that your needs are met with efficiency, discretion, and utmost professionalism. How may I assist you today, sir?

## Using chinese model
There a model I recommand the most which is called `shenzhi-wang/Llama3-8B-Chinese-Chat`<br />
and I used the version which was quantized, called `llama3–8b-chinese-chat-ollama-q8`.

[HuggingFace: shenzhi-wang/Llama3-8B-Chinese-Chat](https://huggingface.co/shenzhi-wang/Llama3-8B-Chinese-Chat) <br/>
[Github: shenzhi-wang/Llama3-8B-Chinese-Chat](https://github.com/Shenzhi-Wang/Llama3-Chinese-Chat) 

      ollama run wangshenzhi/llama3-8b-chinese-chat-ollama-q8

Make a comparison between a lover and an officer; their responses were totally different.
![](https://github.com/weitsung50110/RAG_ollama_flask_chatbotWeb/blob/main/github_imgs/11.png)
![](https://github.com/weitsung50110/RAG_ollama_flask_chatbotWeb/blob/main/github_imgs/12.png)

# 使用現有的基礎映像
FROM weitsung50110/rag_ollama_flask_chatbotweb:1.0

# 設置工作目錄
WORKDIR /app

# 複製當前目錄下的所有檔案到映像中的/app目錄
COPY . .

# (選擇性) 如果有需要，可以運行額外的命令來完成設定或安裝
# RUN additional commands if needed

# 指定應用程式執行的命令
# CMD ["python", "app.py"]

# 設置啟動命令
# CMD ollama run llama3
# CMD ["/bin/sh", "-c", "python3 app.py"]
# CMD ["python", "app.py"] 
# CMD ollama serve && python3 app.py
# CMD ["ollama", "serve"]

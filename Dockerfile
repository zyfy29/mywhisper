FROM python:3.9.9
RUN pip install -y openai-whisper
RUN apt update -y & apt install ffmpeg -y

# download the model
RUN python -c "import whisper; whisper.load_model('large-v3');"

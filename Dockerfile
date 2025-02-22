FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install pytest

COPY . .

EXPOSE 8000

ENV HOST 0.0.0.0

# CMD ["fastapi","run","src","--port","8000","--host","0.0.0.0"]
CMD ["uvicorn", "src.__init__:app", "--host", "0.0.0.0", "--port", "8000"]

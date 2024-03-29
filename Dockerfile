FROM python:3.11-slim
WORKDIR /web
COPY . .
EXPOSE 5000
RUN pip install flask gunicorn
CMD gunicorn -b 0.0.0.0 app:app


# 🐍 Flasker: A Simple Dockerized Flask App

This project demonstrates how to containerize a basic Flask application and push the Docker image to Docker Hub.

---

## 📦 What's Included?

- Minimal Flask web app
- Dockerfile for containerization
- `.dockerignore` for smaller image size
- Instructions to build, run, and push the image

---

## 🚀 Quick Start

### 1. Clone the App

```bash
git clone https://github.com/mahmoud-shabban/flasker.git
cd flasker/
```

---

### 2. Dockerfile

A minimal `Dockerfile` is provided to build the Flask app image:

```Dockerfile
FROM    python:3.12-slim
WORKDIR /app
COPY    . .
RUN     pip install Flask click Jinja2 Werkzeug
RUN     flask --app flasker init-db
ENTRYPOINT ["flask","--app","flasker","run","--host=0.0.0.0"]
```

---

### 3. Build the Docker Image

```bash
docker build -t flasker:v1.0 .
```

---

### 4. Run the App

```bash
docker run -p 5000:5000 flasker:v1.0
```

Open your browser and go to:

```
http://localhost:5000
```

---

## 🐳 Push to Docker Hub

### 1. Log in to Docker Hub

```bash
docker login
```

### 2. Tag the Image

```bash
docker tag flasker:v1.0 ibrahimmintal/flasker:v1.0
```

### 3. Push the Image

```bash
docker push ibrahimmintal/flasker:v1.0
```

You can find the image here:  
🔗 [https://hub.docker.com/r/ibrahimmintal/flasker](https://hub.docker.com/r/ibrahimmintal/flasker)

---

## 📁 Project Structure

```
flasker/
├── flasker.py
├── Dockerfile
├── .dockerignore
├── templates/
│   └── index.html
├── static/
│   └── style.css
└── ...
```

---

## 🧪 Optional: Docker Compose Support (Coming Soon)

Want to add PostgreSQL or Redis? You can extend this with a `docker-compose.yml`.

---

## 📄 License

This project is for educational purposes.  
Feel free to fork, extend, and contribute!

---

## 👨‍💻 Author

Made by [@ibrahim-mintal](https://github.com/ibrahim-mintal)


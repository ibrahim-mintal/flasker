FROM	python:3.12-slim
WORKDIR /app
COPY    . .
RUN pip install Flask click Jinja2 Werkzeug
RUN	flask --app flasker init-db
ENTRYPOINT      ["flask","--app","flasker","run","--host=0.0.0.0"]

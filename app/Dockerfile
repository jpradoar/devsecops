# Imagen base vulnerable (Python 3.6 ya no tiene soporte y tiene CVEs)
FROM python:3.6-slim

WORKDIR /app

COPY app.py .

# Instala Flask para la demo
RUN pip install Flask

EXPOSE 5000

CMD ["python", "app.py"]

# En Dockerfile
# Hala la imagen base
FROM python:3.10.4-slim-bullseye

# Ajusta las variables del entorno
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDOWNWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Ajusta el directorio de trabajo
WORKDIR / code

# Instale dependencias
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copia el proyecto
COPY . .
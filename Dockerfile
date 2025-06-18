# Imagen base oficial de Python
FROM python:3.11-slim

# Establecer directorio de trabajo en el contenedor
WORKDIR /app

# Copiar archivos del proyecto al contenedor
COPY . /app

# Instalar dependencias
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Exponer el puerto por donde corre Django (por defecto 8000)
EXPOSE 8000

# Comando por defecto para ejecutar el servidor de desarrollo
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
FROM ghcr.io/open-webui/open-webui:main

WORKDIR /app/backend

RUN mkdir -p /app/backend/static /app/backend/data /app/cache

RUN apt-get update && apt-get install -y apache2-utils

RUN chmod -R 777 /app/backend/static /app/backend/data /app/cache

EXPOSE 8000
CMD ["bash", "start.sh"]

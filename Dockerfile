# Keep our base image as specific as possible.
FROM nginx/unit:1.24.0-php8.0

# Same as "working_directory" in config.json.
COPY myapp/index.php /www/
COPY myapp/config.json /docker-entrypoint.d/config.json

# Port used by the listener in config.json.
EXPOSE 8080

FROM postgres:16-alpine
COPY src/init.sql /docker-entrypoint-initdb.d/
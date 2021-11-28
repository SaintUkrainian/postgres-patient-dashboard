FROM postgres

ENV POSTGRES_PASSWORD 00zomifi

ENV POSTGRES_DB patient-dashboard

EXPOSE 5432

ADD scripts/. /docker-entrypoint-initdb.d/
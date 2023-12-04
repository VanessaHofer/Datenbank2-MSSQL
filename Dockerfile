FROM mcr.microsoft.com/mssql/server:2017-CU8-ubuntu

LABEL maintainer="Vanessa Hofer <vanessa.hofer@hftm.ch>"

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Datenbank2MSSQL$
ENV PATH /opt/mssql-tools/bin:/opt/mssql/bin:$PATH

RUN mkdir /docker-entrypoint-initdb.d

COPY /SQL/01_setup_users.sql /docker-entrypoint-initdb.d/
COPY /SQL/02_emp-dept_tables.sql /docker-entrypoint-initdb.d/
COPY /SQL/03_emp-dept_data.sql /docker-entrypoint-initdb.d/
COPY /SQL/04_verein_tables.sql /docker-entrypoint-initdb.d/
COPY /SQL/05_verein_data.sql /docker-entrypoint-initdb.d/

COPY docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["sqlservr"]

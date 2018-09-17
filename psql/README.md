```
su postgres
psql

\password postgres
CREATE USER abc WITH PASSWORD 'abc';
CREATE DATABASE abc OWNER abc;
GRANT ALL PRIVILEGES ON DATABASE abc to abc;

pg_restore -d abc abc.dump;

\l
\c abc
\d
\d account
\q

```






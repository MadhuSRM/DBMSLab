-- Using Container Database System

SQL> show con_name;

CON_NAME
------------------------------
CDB$ROOT

SQL> create user c##srm identified by srm;

User created.

SQL> grant create session to c##srm;

Grant succeeded.

SQL> grant create table to c##srm;

Grant succeeded.

SQL> GRANT INSERT ANY TABLE TO c##srm;

Grant succeeded.


SQL> GRANT delete ANY TABLE TO c##srm;

Grant succeeded.

SQL> GRANT update ANY TABLE TO c##srm;

Grant succeeded.

SQL> GRANT select ANY TABLE TO c##srm;

Grant succeeded.

SQL> show user;
USER is "C##SRM"

-- Using Pluggabale Database System

SQL> alter session set container = xepdb1;

Session altered.

SQL> show user;
USER is "SYSTEM"

SQL> show con_name;

CON_NAME
------------------------------
XEPDB1

SQL> CONNECT srm/srm@localhost:1521/XEPDB1;
Connected.

SQL> SHOW user;
USER is "SRM"

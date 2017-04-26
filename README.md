# Postgres Top Query

Monitoring tool for PostgreSQL database server. Prints full sql code for the query in `pg_top` with lot of related parameters like CPU and memory usage, run time and client command, etc. It designed for use with zabbix, but may be invoked as standalone script as well.

## Prerequisites.

Requirements include software it depends on:

* [pg_top](http://ptop.projects.pgfoundry.org/)
* [sql-formatter](https://github.com/jdorn/sql-formatter)

They both are available in most Linux distributions as packages. 

## Installation

as simple as run 

`sudo make`

after pulling this repository. To remove is not less easy:

`sudo make uninstall`

## Usage.

Do configure zabbix with key `pg_top.query` and see "latest data" or become postgres user:

`su - postgres`

and enjoy with command line:

`pg_top_query`


mariadb:
  pkg.installed:
    - pkgs:
      - mariadb-client-{{ mariadb_version }}
      - mariadb-client-core-{{ mariadb_version }}
      - mariadb-common
      - mariadb-server-{{ mariadb_version }}
      - mariadb-server-core-{{ mariadb_version }}
  service.running:
    - name: mariadb
    - enable: True
    - reload: True
    - watch:
      - file: /etc/mysql/mariadb.cnf

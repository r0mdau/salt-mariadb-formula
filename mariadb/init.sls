mariadb:
  pkg.installed:
    - pkgs:
      - mariadb-client-{{ pillar.get('mariadb_version', default='10.3') }}
      - mariadb-server-{{ pillar.get('mariadb_version', default='10.3') }}
  service.running:
    - name: mariadb
    - enable: True

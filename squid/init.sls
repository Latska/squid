squidie:
  pkg.installed:
    - pkgs:
      - squid

/etc/squid/squid.conf:
  file.managed:
    - source: salt://squid2/squid.conf

/etc/squid/restricted_sites:
  file.managed:
    - source: salt://squid2/sites/restricted_sites

/etc/squid/blocked_sites:
  file.managed:
    - source: salt://squid2/sites/blocked_sites

/etc/squid/allowed_sites:
  file.managed:
    - source: salt://squid2/sites/allowed_sites

/etc/squid/allowed_ips.txt:
  file.managed:
    - source: salt://squid2/allowed_ips.txt

squid:    
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/squid/squid.conf

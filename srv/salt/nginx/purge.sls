nginx_service:
  service.dead:
    - name: nginx

nginx_pkg_removed:
  pkg.purged:
    - name: nginx
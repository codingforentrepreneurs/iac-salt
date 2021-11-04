{% set has_docker = salt['cmd.shell']('command -v docker') %}

{% if has_docker %}
docker_build_pyapp:
  cmd.run:
    - name: docker build -t pyapp -f Dockerfile .
    - cwd: /var/www/app/
{% endif %}
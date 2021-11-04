{% set has_docker = salt['cmd.shell']('command -v docker') %}

{% if not has_docker %}
docker_script:
  cmd.run:
    - name: curl https://get.docker.com -o /tmp/get-docker.sh


docker_install:
  cmd.run:
    - name: sh /tmp/get-docker.sh
    - require:
      - docker_script
{% endif %}
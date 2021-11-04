{% set has_running_containers = salt['cmd.shell']('docker ps -aq') %}

{% if has_running_containers %}

docker_stop:
  cmd.run:
    - name: docker stop $(docker ps -aq)

docker_remove:
  cmd.run:
    - name: docker rm $(docker ps -aq)

{% endif %}

docker_run_app:
  cmd.run:
    - name: docker run --restart always -p 80:8001 -e PORT=8001 -d pyapp
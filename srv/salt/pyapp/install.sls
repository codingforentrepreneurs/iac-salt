iac_python:
  pkg.installed:
    - name: git
  file.directory:
    - name: /var/www/app/
  git.latest:
    - name: {{ pillar['git_repo'] }}
    - target: /var/www/app
    - branch: main
    - force_reset: true
# python_app_manual:
#   file.directory:
#     - name: /var/www/
#   cmd.run:
#     - name: git clone repo app
#     - cwd: /var/www/
#     - runas: root
#     - creates: /var/www/app/
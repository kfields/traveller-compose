#cp /tmp/instance instance/
cp -a /tmp/instance/. /traveller/instance/

python manage.py initialise

python manage.py db migrate
python manage.py db upgrade

flask seed dev
python manage.py rundebug
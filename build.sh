pip install -r requirements.txt
echo("1")
python manage.py migrate

python manage.py collectstatic --noinput

python manage.py runserver

source venv/Scripts/activate
pip install pymysql
pip install -r requirements.txt

python manage.py makemigrations
python3 manage.py migrate


python3 manage.py collectstatic --noinput

python3 manage.py runserver


deactivate

## zebrands-test
This is a repository of the Zėbrands test

## REQUIREMENTS

- Python Version 3.9
- Django Version 3.2
- MySQL Version Ver 14.14 Distrib 5.7.26
- Virtual Environment

# To install Virtual Environment
```bash
$ cd zebrands-test
$ pip install virtualenv
$ virtualenv venv
$ source venv/bin/activate
```
Tip URL About of [virtual env](https://sourabhbajaj.com/mac-setup/Python/virtualenv.html)
# Use .env-example
```bash
$ cd store_system
$ cp .env-example .env
```
Replace with your values

# Generate Key for your project
In terminal execute this command :
```bash
python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
```
copy generated key and paste in your settings.py SECRET_KEY using ''

# Install requirements on folder of project
```bash
$ cd wafle_store
$ pip install -r requirements.txt
```

# Generate Key for your project
In terminal execute this command :
```bash
$ python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
```

# Finally
In your project folder wafle_store executing this command :
```bash
$ python manage.py runserver
```
## ADITIONALS COMMENTS
# Create user admin
```bash
$ python manage.py createsuperuser
```
And follow the instructions

Visit admin page http://{REPLACE_WITH_YOUR_HOST}/admin
# Create tables
```bash
$ python manage.py migrate
```
Or your can use the backup of database and media files:
[files_media_sql.zip](https://github.com/waflecl/zebrands-test/files/6331715/files_media_sql.zip)

This zip contains 2 files, media and SQL Dump, copy media inside project wafle_store and restore the sql
# Model v1
![model_wafle_store_v1](https://user-images.githubusercontent.com/4990109/115153020-c302ef80-a041-11eb-83bd-353088e4d099.png)



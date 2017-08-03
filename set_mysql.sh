PYTHONPATH=/opt/graphite/webapp /usr/local/bin/django-admin.py migrate --settings=graphite.settings --run-syncdb


#/opt/graphite/webapp/graphite/local_settings.py
#DATABASES = {
#    'default': {
#        'NAME': 'graphite',
#        'ENGINE': 'django.db.backends.mysql',
#        'USER': 'graphite',
#        'PASSWORD': 'Graphite@2017',
#        'HOST': 'localhost',
#        'PORT': '3306'
#    }
#}

#SECRET_KEY = 'secure_key'
#TIME_ZONE = 'America/Toronto'
#DEBUG = True

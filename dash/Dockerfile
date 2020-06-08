FROM python

WORKDIR /usr/src/app/

RUN [ "git", "clone", "https://github.com/veronikaro/django-dashboard-app" ]

WORKDIR /usr/src/app/django-dashboard-app/ 

RUN [ "pip", \
      "install", \
      "django" \
]

EXPOSE 8080

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]

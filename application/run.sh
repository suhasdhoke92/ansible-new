#!/bin/bash

DEPLOYMENT_FOLDER='/opt/app'

source $DEPLOYMENT_FOLDER/venv/bin/activate

gunicorn app:application \
         --bind 127.0.0.1:<port> \
         --workers 2 \
         --threads 2
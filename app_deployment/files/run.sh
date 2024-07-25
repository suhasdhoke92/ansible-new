#!/bin/bash

export INSTANCE_PATH="{{ instance_path }}"
export SECRET_KEY="{{ SECRET_KEY }}"
export DB_PATH="{{ DB_PATH }}"
export ADMIN_GROUPS="{{ ADMIN_GROUPS }}"

cd {{ deployment_folder }}
source {{ deployment_folder }}/venv/bin/activate

gunicorn -b 0.0.0.0:{{ port }} app:app

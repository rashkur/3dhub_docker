#!/bin/sh

alembic upgrade head && uwsgi --socket 0.0.0.0:8000 -w app --processes 4 --threads 2 --stats 0.0.0.0:8100


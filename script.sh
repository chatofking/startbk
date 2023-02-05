#!/bin/bash
pg_ctl -D "C:\Program Files\PostgreSQL\15\data" start &&
start "" "C:\Program Files\Git\git-bash.exe" --cd="C:\Users\chat_\projects\backend" -c "poetry shell && poetry run uvicorn app.main:app --reload" $SHELL &&
start "" "C:\Program Files\Git\git-bash.exe" --cd="C:\Users\chat_\projects\frontend" -c "npm start" $SHELL

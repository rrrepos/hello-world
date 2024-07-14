# 
FROM python:latest

# 
WORKDIR /code

# 
COPY ./requirements.txt /code

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app

RUN <<EOF
groupadd docker
usermod -aG docker
EOF

# start the server
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
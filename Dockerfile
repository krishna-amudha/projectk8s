FROM python:3.9  
WORKDIR /code
COPY ./reguirements.txt /code/reguirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/reguirements.txt
COPY ./main.py /code/main.py
COPY ./form.html /code/form.html
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

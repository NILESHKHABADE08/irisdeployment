FROM python:3.7

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

RUN from sklearn import datasets

EXPOSE 8501

COPY . /app

ENTRYPOINT ["streamlit", "run"]

CMD ["test.py"]

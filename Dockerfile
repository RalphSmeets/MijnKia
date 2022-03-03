FROM python:2-slim

WORKDIR /MijnKia

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY MijnKia.py .
COPY MijnKia.ini .

CMD [ "python", "./MijnKia.py" ]
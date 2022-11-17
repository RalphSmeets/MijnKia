FROM python:2-slim

WORKDIR /MijnKia

COPY ../src/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ../src/MijnKia.py .
COPY ../src/MijnKia.ini .

CMD [ "python", "./MijnKia.py" ]
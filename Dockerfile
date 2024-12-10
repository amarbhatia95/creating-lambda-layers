FROM public.ecr.aws/lambda/python:3.12

COPY requirements.txt ./

#RUN pip install -r requirements.txt -t /python

RUN pip install -r requirements.txt --platform manylinux2014_x86_64 --target /python --only-binary=:all:


# Use Python to zip the contents
RUN python -m zipfile -c /lambda-layer.zip /python
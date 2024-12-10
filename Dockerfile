FROM public.ecr.aws/lambda/python:3.12

COPY requirements.txt ./

#RUN pip install -r requirements.txt -t /python

# this will allow langchain to work with python 3.12 on x86 aws lambda architecture
RUN pip install -r requirements.txt --platform manylinux2014_x86_64 --target /python --only-binary=:all:


# Use Python to zip the contents
RUN python -m zipfile -c /lambda-layer.zip /python

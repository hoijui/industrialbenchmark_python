# docker.io container descriptor for the Industrial-Benchmark (python version)
# interface to OpenAI.
# See copyright information, see the LICENSE file.
#
# to (re-)build the docker image:
# > docker build -t py-ind-bench .
#
# to run:
# > docker run py-ind-bench
#

# Base image
FROM python:2-slim

MAINTAINER hoijui <hoijui.quaero@gmail.com>

WORKDIR /src

# Install native requirements
ADD ./requirements.apt.txt /src/requirements.apt.txt
RUN apt-get update \
	&& awk -vORS=" " '{ print $1 }' requirements.apt.txt \
	| xargs apt-get install -y

# Install python requirements
ADD ./requirements.txt /src/requirements.txt
RUN pip install -r requirements.txt

# Copy all our sources from the system to the container
COPY ./*.py /src/
COPY ./engine /src/engine
COPY ./openai /src/openai

# Execute the test script
#CMD ["python", "/src/example.py"]
CMD ["python", "/src/example_openai.py"]

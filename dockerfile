


FROM public.ecr.aws/lambda/python:3.11

# set the working directory in the container

# copy the dependencies file to the working directory
COPY requirements.txt .
# install dependencies
RUN pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"
# copy the content of the local src directory to the working directory
COPY app.py ${LAMBDA_TASK_ROOT}
# Run the server
CMD [ "app.handler" ]
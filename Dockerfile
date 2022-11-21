FROM public.ecr.aws/lambda/python:3.8

COPY . .

# Setup golang in docker
RUN yum -y install golang
# Install subfinder
RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
CMD [ "lambda_function.lambda_handler" ]
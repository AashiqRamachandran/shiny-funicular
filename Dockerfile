FROM public.ecr.aws/lambda/python:3.8

COPY . .

# Setup golang in docker
RUN yum -y install golang
# Install subfinder
RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
RUN cp /root/go/bin/subfinder .
RUN chmod 644 subfinder
RUN chmod 755 subfinder
CMD [ "lambda_function.lambda_handler" ]
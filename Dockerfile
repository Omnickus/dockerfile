from python:3.10-alpine

WORKDIR /test_opencart

COPY requarements.txt ./

RUN pip install -U pip
RUN pip install -r requarements.txt
RUN mkdir screen_shot

COPY ./ ./

CMD [ "pytest", "--browser", "chrome", "--url", "http://bitnami/", "--executor", "172.22.0.1" ]


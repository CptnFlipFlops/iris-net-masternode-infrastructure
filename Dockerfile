FROM  irisnet/irishub:v1.0.1

RUN mkdir /app/ app/iris

COPY ./entrypoint.sh /app/


CMD ["/app/entrypoint.sh"]

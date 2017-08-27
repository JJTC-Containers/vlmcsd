FROM alpine:3.6

COPY vlmcsd-1111-r0.apk vlmcsd-doc-1111-r0.apk ./

RUN apk add --allow-untrusted vlmcsd-1111-r0.apk vlmcsd-doc-1111-r0.apk \
&& rm vlmcsd-1111-r0.apk vlmcsd-doc-1111-r0.apk

EXPOSE 1688

CMD ["vlmcsd", "-D", "-d", "-t", "3", "-e", "-v"]
FROM public.ecr.aws/docker/library/rockylinux:9.3.20231119
RUN dnf update -y && dnf install vim -y && dnf install httpd -y
RUN mkdir -p /var/run/httpd && mkdir -p /var/lock/httpd
CMD /usr/sbin/httpd -D FOREGROUND
EXPOSE 80

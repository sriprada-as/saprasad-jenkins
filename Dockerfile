FROM oraclelinux:8.4
LABEL Name="Sriprada"
ENV deploy="app"
RUN yum install httpd -y && mkdir /common /common/webapp1-sri /common/webapp2-sri /common/webapp3-sri
#Copy and Add are same, add can be used to copy the url also
COPY html-sample-app /common/webapp1-sri/
ADD project-html-website /common/webapp2-sri/
ADD project-website-template /common/webapp3-sri/
COPY deploy.sh /common/
WORKDIR /common
RUN chmod +x deploy.sh
ENTRYPOINT ["./deploy.sh"]

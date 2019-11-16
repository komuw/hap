# https://github.com/docker-library/haproxy/blob/master/2.0/Dockerfile

FROM haproxy:1.9

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY dhparam.pem /usr/local/etc/haproxy/dhparam.pem
COPY mycert.pem /etc/haproxy/mycert

EXPOSE 1936
EXPOSE 9000
EXPOSE 9001
EXPOSE 9002
EXPOSE 9003


# usage:
# docker build -t myhaproxy .
# docker run -P myhaproxy
#
# docker-compose build && docker-compose up
# - curl -vLk http://localhost:9000/health
# - curl -vLk https://localhost:9001/health
# - curl -vILk http://localhost:9002/health
# - curl -vILk http://localhost:9003/health

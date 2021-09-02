# # # INICIO - INSTALAÇÃO PADRAO DO CENTOS 7 # # #
FROM local/c7-default:latest
# # # FIM - INSTALAÇÃO PADRAO DO CENTOS 7 # # #

# # # INICIO - INSTALAÇÃO MYSQL # # #
RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
rpm -Uvh mysql80-community-release-el7-3.noarch.rpm && \
yum install mysql-server -y ;
RUN systemctl enable mysqld;
RUN rm mysql80-community-release-el7-3.noarch.rpm
# # # FIM - INSTALAÇÃO MYSQL # # #

# # # INICIO - CONFIG E PERMISSAO DE PASTAS # # #
COPY mysql-entrypoint.sh .inc/
RUN bash .inc/mysql-entrypoint.sh
EXPOSE 3306
# # # FIM - CONFIG E PERMISSAO DE PASTAS # # #

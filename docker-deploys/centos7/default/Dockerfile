# # # INICIO - INSTALAÇÃO PADRAO DO CENTOS 7 # # #
FROM centos:7

RUN yum install epel-release -y && yum update -y && \
yum install vim wget systemd initscripts -y && yum clean all;

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
CMD ["/usr/sbin/init"]
RUN yum autoremove -y && yum clean all;
# # # FIM - INSTALAÇÃO PADRAO DO CENTOS 7 # # #

# # # INICIO - INSTALAÇÃO DO FIREWALL # # #
RUN yum install firewalld -y && systemctl enable firewalld
# # # FIM - INSTALAÇÃO DO FIREWALL # # #

# # # INICIO - CONFIG E PERMISSAO DE PASTAS # # #
ENV path_workdir=/home
WORKDIR $path_workdir
RUN mkdir .inc
COPY default-entrypoint.sh .inc/
RUN bash .inc/default-entrypoint.sh
# # # FIM - CONFIG E PERMISSAO DE PASTAS # # #

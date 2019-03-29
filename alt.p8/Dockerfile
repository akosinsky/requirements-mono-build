FROM alt:p8

ENV LANG ru_RU.UTF-8

RUN apt-get update ; \
apt-get -y install mc htop git autoconf_2.60 libtool_2.4 automake_1.14 rpm-build gettext cmake python wget ; \
apt-get install -y less net-tools bind-utils tcpdump nmap telnet strace lsof wget glibc-locales unzip; \
echo -ne "LANG=ru_RU.UTF-8\nSUPPORTED=ru_RU.UTF-8\n" >/etc/sysconfig/i18n
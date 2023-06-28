RUN apt-get update && apt-get install -y vsftpd
ADD ./vsftpd.conf /etc/vsftpd.conf
RUN service vsftpd start
EXPOSE 20 21
CMD /usr/sbin/vsftpd /etc/vsftpd.conf

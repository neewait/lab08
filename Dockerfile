FROM stilliard/pure-ftpd
   RUN echo "yes" > /etc/pure-ftpd/conf/DontResolve
   RUN echo "yes" > /etc/pure-ftpd/conf/TLS
   CMD /run.sh -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j -R -P $PUBLICHOST -p 30000:30009

FROM windowsservercore
RUN dism /online /enable-feature /all /featurename:iis-webserver /NoRestart
COPY ./output/ c:\\inetpub\\wwwroot\\
COPY ./docker.jpg c:\\inetpub\\wwwroot\\docker.jpg
CMD ["cmd"]
FROM windowsservercore
RUN dism /online /enable-feature /all /featurename:iis-webserver /NoRestart
RUN dism /online /enable-feature /all /featurename:IIS-ASPNET45 /NoRestart
COPY ./BobWebApplication1/ c:\\inetpub\\wwwroot
COPY ./docker.jpg c:\\inetpub\\wwwroot\\docker.jpg
COPY ./download.png c:\\inetpub\\wwwroot\\download.png
CMD ["cmd"]

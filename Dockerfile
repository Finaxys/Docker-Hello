FROM windowsservercore
RUN dism /online /enable-feature /all /featurename:iis-webserver /NoRestart
#RUN dism /online /enable-feature /all /featurename:IIS-ASPNET45 /NoRestart 
RUN powershell -executionpolicy bypass -command "add-windowsfeature Web-Asp-Net45"
RUN mkdir c:\\inetpub\\wwwroot\\demo\\website\\
COPY ./BobWebApplication1/ c:\\inetpub\\wwwroot\\demo\\website
COPY ./docker.jpg c:\\inetpub\\wwwroot\\\\demo\\website\\docker.jpg
COPY ./download.png c:\\inetpub\\wwwroot\\demo\\website\\download.png
RUN /windows/system32/inetsrv/appcmd.exe set vdir "Default Web Site/" -physicalPath:"c:\inetpub\wwwroot\demo\website"

CMD ["cmd"]

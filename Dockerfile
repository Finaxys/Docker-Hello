FROM windowsservercore
RUN dism /online /enable-feature /all /featurename:iis-webserver /NoRestart
#RUN dism /online /enable-feature /all /featurename:IIS-ASPNET45 /NoRestart 
RUN powershell -executionpolicy bypass -command "add-windowsfeature Web-Asp-Net45"
RUN cd c:\\inetpub\\wwwroot
RUN mkdir demo
RUN cd demo
RUN mkdir website
COPY ./BobWebApplication1/ c:\\inetpub\\wwwroot\\demo\\website
RUN /windows/system32/inetsrv/appcmd.exe set vdir "Default Web Site/" -physicalPath:"c:\inetpub\wwwroot\demo\website"

CMD ["cmd"]

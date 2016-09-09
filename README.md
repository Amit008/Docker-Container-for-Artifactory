Docker-Container-for-Artifactory


-----I'm Documenting Docker Containers for Learning purpose not for Production Use------- <br>
----- Artifactory is property of Jfrog and I'm not bundling or sharing Artifactory with this <br>

To build and run this Container Required Jfrog Artifactory to be downloaded from Jfrog Artifactory website <br>

Useful links: <br>
Sontype Nexus Links: 1.Download Jfrog Artifactory Installers [64bit] <br>
https://www.jfrog.com/open-source/

2.Documentation for Jfrog Artifactory  <br>
https://www.jfrog.com/confluence/display/RTF/Welcome+to+Artifactory <br>
Docker Links: <br>

3.How to start with Docker: <br>
https://docs.docker.com/docker-for-mac/ <br>
https://www.docker.com/ <br>
4.Documentation: <br>
https://docs.docker.com/  <br>

Builing Image for Artifactory <br>
Before Building Image install and configure Python to host http server for your installers[refer the dockerfile for URL and change it accordingly].<br>
1.create a Directory Artifactory and copy the Dockerfile in it <br>
2.Execute the docker Command to build the Image docker build -t artifactory:stable. <br>
wait till it finish sucessfully without any error. <br>

Create Container for Artifactory:





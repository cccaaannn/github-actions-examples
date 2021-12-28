## Deploying maven package to sonatype nexus via GitHub actions
---
**Guide link:** https://blog.sonatype.com/using-nexus-3-as-your-repository-part-1-maven-artifacts


### Installing sonatype nexus with docker
- create save dir to host machine 

```shell 
mkdir /var/nexus-data
chmod -R 777 /var/nexus-data
```
- Run docker
```shell
sudo docker run -d -p 8081:8081 -v /var/nexus-data:/nexus-data --name nexus sonatype/nexus3
```
- If you want to stop the container, do it slowly.
```shell
docker stop --time=120 <CONTAINER_NAME>
```
### Deploy via GitHub actions
- Create a repo
- Add the `maven_build.yaml` file to your repo's workflows folder. 
- Add `distributionManagement` part to your pom.xml, like on the example.
- Add `servers` and `mirror` parts to your settings.xml, like on the example.
- Add these secrets to your repo.
    - NEXUS_URL
    - NEXUS_USERNAME
    - NEXUS_PASSWORD
- Push


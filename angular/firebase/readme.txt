1 
create firebase project

2
install firebase cli
npm i -g firebase-tools

3
get FIREBASE_TOKEN
firebase login:ci

4
add token to github secrets
FIREBASE_TOKEN=1/...

5
add and modify firebase files to project
firebase.json  (dist folder and local project name)
.firebaserc (firebase project name)

6
add github workflows yaml file to project
.github

7
push
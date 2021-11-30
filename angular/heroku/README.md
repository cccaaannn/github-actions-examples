1. create heroku project
2. install heroku cli (optional, for debuging)
3. get HEROKU_API_KEY at the bottom of the account page
4. add token to github secrets HEROKU_API_KEY and email HEROKU_EMAIL
5. add and modify the `Dockerfile.web`, it has to be on the root dir and can't have a different name
6. add github workflows yaml file to project .github
7. add .heroku folder
    - `nginx.conf` is for redirecting all requests to index.html
    - `run.sh` 
        1. is for dynamically change the $PORT, heroku randomly assigns a port on each run.
        2. there is also `envsubst` for dynamically adding api_url of the backend `env.template.js > env.js`
8. push
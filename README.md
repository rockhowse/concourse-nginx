# concourse-nginx
Simple concourse pipeline that will build and push a basic nginx docker container to a docker registry

## pre-requisits 

This repo assumes you have the following configured and have the ability to access them. 

* docker registry (artifactory, registry, ECR etc.)
* [concourse server](https://concourse-ci.org/install.html)
* [fly cli](https://concourse-ci.org/fly.html)

## example usage

* NOTE THIS CONFIGURATION IS NOT SUITABLE FOR PRODUCTION 

Set up target in concourse:

```
fly --target nginx-test login --concourse-url http://<CONCOURSE_URL> -u <CONCOURSE_USERNAME> -p <CONCOURSE_PASSWORD>
```

Deploy the pipeline to concourse: 

```
fly -t nginx-test set-pipeline -p build-and-push-nginx \
    -c pipeline.yml \
    --var repository-name=<REPOSITORY_URL> \
    --var registry-username=<REPOSITORY_USERNAME> \
    --var registry-password=<REPOSITORY_PASSWORD>
```
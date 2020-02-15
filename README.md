# codeready-go-app

**Sample golang app for OpenShift Deployments**

**Usage**
```
$ oc new-project codeready-go-app
$ oc new-app https://github.com/tosin2013/codeready-go-app.git --name=codeready-go-app
$ oc expose svc/codeready-go-app
```

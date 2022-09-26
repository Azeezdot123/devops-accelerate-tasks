# Deploying Application to kubernetes Cluster using ArgoCD

I setup the application with the k8 manifest.
![](img/k8manifest.png)

I also create the helm chart.
![](img/helmchart.png)

I create an eks cluster cause i was unable to run docker and minikube on my system.
 I first install the helm chart to my Cluster.
 ![](img/install.png)

## I create the argocd app using the web ui.
The uat namespace
![](img/uat.png)
![](img/uat1.png)

The dev namespace
![](img/dev.png)
![](img/dev1.png)

The prod namespace
![](img/prod.png)
![](img/prod1.png)

All the argocd app were all in the Healthy state and synced.
![](img/all.png)
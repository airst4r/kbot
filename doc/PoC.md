
# Installing and Configuring Command Access to the ArgoCD Graphical Interface in Kubernetes Cluster k3d

## Prerequisites

- k3d installed on your local machine
- kubectl installed on your local machine

## Installation

1. Create a k3d cluster by running the following command:
   
   ```
   k3d cluster create argocd
   ```

2. Wait for the ArgoCD deployment to complete.

3. To access the ArgoCD web interface, run the following command to expose the service:

   ```
   kubectl port-forward svc/my-argocd-server -n argocd 8080:443
   ```

5. Open a web browser and navigate to `https://localhost:8080`. You should now be able to access the ArgoCD graphical interface.

## Configuring Command Access

1. Install the ArgoCD command-line tool by running the following command in your terminal:

 
 ```
curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
rm argocd-linux-amd64
```  


2. Once the installation is complete, configure the ArgoCD command-line tool to connect to your ArgoCD server by running the following command:

   ```
   argocd login localhost:8080 --insecure --username <ARGOCD_USERNAME> --password <ARGOCD_PASSWORD>
   ```

   Replace `<ARGOCD_USERNAME>` and `<ARGOCD_PASSWORD>` with your ArgoCD credentials.

3. You should now have command-line access to your ArgoCD server. You can use the `argocd` command to perform various tasks, such as syncing applications or viewing their status.

## Accessing the ArgoCD Interface
![alt text](Screen1.png)
![alt text](Screen2.png)
![alt text](Screen3.png)


1. Open a web browser and navigate to the ArgoCD URL.

2. On the login screen, enter your username and password and click "Login".

3. Once logged in, you will be directed to the ArgoCD dashboard.

4. In the dashboard, you can view the status of your applications and repositories, as well as manage your clusters, settings, and user accounts.

5. To view the details of a specific application or repository, click on its name in the dashboard.

6. From the application or repository details page, you can view its current state, configuration, and deployment history.

7. To make changes to an application or repository, you can use the ArgoCD interface to modify its configuration, sync its state, or trigger a deployment.

8. If you encounter any issues while using the ArgoCD interface or command-line tool, you can refer to the ArgoCD documentation or contact your administrator for assistance.

Note: The ArgoCD installation and configuration process may differ depending on your setup and environment.

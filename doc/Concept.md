| Tool     	| Description                                                                                                                                                                                    	| Pros/Cons                                                                                                                                               	| Demo                               	| Сonclusion                                                               	|
|----------	|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------------------------------------------------------------------------------------------------------------------------------------------	|------------------------------------	|--------------------------------------------------------------------------	|
| minikube 	| Minikube is a tool that makes it easy to run Kubernetes on a local machine.<br>                                                                                                                	| + Easy to install<br> + Light<br> + Good add-on system<br>  - Minimal functionality<br> - Not possible to add other nodes<br>                           	| https://minikube.sigs.k8s.io/docs/ 	| - Can be resourse-intensive<br> - Most preferable for production<br>     	|
| Kind     	| kind is a tool for running local Kubernetes  clusters using Docker container “nodes”. kind was primarily designed for testing Kubernetes itself,  but may be used for local development or CI. 	| + Easy to install<br> + Easy to cluster deploy<br> + Can load local images directly into cluster<br>   - Network access to cluster may be difficult<br> 	| https://kind.sigs.k8s.io/          	| - Can be resourse-intensive<br> - Not recommend to use in production<br> 	|
| k3s      	| Lightweight Kubernetes. Production ready, easy to install, half the memory,  all in a binary less than 100 MB                                                                                  	| + Easy to install and cluster deploy<br> + Lightweight tool<br>  - Not enough fuctionality<br>                                                          	| https://docs.k3s.io/quick-start    	| - Not recommend to use in production<br>                                 	|


Minikube

    Install minikube using the official documentation
    Start minikube using the minikube start command
    Verify that the cluster is running using the kubectl cluster-info command
    Deploy an example application using kubectl create deployment and kubectl expose deployment commands
    Access the application using the minikube service command

kind

    Install kind using the official documentation
    Create a Kubernetes cluster using kind using the kind create cluster command
    Verify that the cluster is running using the kubectl cluster-info command
    Deploy an example application using kubectl create deployment and kubectl expose deployment commands
    Access the application using the kubectl port-forward command or kubectl proxy command

k3d

    Install k3d using the official documentation
    Create a Kubernetes cluster using k3d using the k3d create cluster command
    Verify that the cluster is running using the kubectl cluster-info command
    Deploy an example application using kubectl create deployment and kubectl expose deployment commands
    Access the application using the kubectl port-forward command or kubectl proxy command

Demo record - https://asciinema.org/a/LvU6VLYGyJEER8bbEsUAFogSy
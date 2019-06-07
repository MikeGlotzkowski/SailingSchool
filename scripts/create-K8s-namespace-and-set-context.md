# Create a K8s namespace and configure the kubectl to use this namespace as context

## Adapt and run the commands below 

Connect to the cluster (see ./create-and-connect-to-aks.md to see how).

Download the namespace.yml file and adapt to your needs (give a name to your namespace).

To create your namesapce on the AKS cluster run:

```
kubectl apply -f namespace.yml
```

To create a context, adapt and run:

```
kubectl config set-context <name-of-your-context> --namespace=<name-of-your-namespace> --cluster=<name-of-your-cluster> --user=<name-of-your-user>
```

Yours might be

--user=clusterUser\_\<resource-grp-of-your-clsuter>\_\<name-of-your-cluster>


Now you only have to use this freshly created context:

```
kubectl config use-context <name-of-your-context>
```
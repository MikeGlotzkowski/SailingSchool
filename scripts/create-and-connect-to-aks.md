# Create an AKS 

## Adapt and run the commands below to create your own AKS through the azure CLI
If your shell does not accept "az" you can use az.cmd or use an alias like 

```
alias az="az.cmd"
```

This should do the trick for everything but the login command.

Login the Azure CLI: 

```
az login
```

Tipp: If you have trouble loggin in, because your system gets confused with accounts and tokens. Use parameter --use-device-code for an alternate login experience

Create a resource group for your cluster (adapt the region to your region of choice):

```
az group create -n <gname> -l westeurope
```

Create the AKS in the resource group with as many nodes as u like (in this case 2).
We don't want to bother with keys at this stage, so use the parameter --generate-ssh-keys.

```
az aks create -g <gname> -n <clname> --node-count 2 --generate-ssh-keys
```

Once the cluster is _up and running_ connect to it like this:

```
az aks get-credentials -n <clname> -g <gname>
```

For more details and customization see the Azure documentation.
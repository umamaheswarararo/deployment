## App Installation

**ingress**

```
kubectl apply -n default -f ing-portal-mdmdev.yaml

```

**emm-portal**

```
kubectl apply -n default -f emm-portal-config-dev.yaml 
source values-dev.sh
cat ../templates/emm-portal-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**collector**

```
kubectl apply -n default -f collector-config-dev.yaml 
source values-dev.sh
cat ../templates/collector-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**andmgmt-api**

```
kubectl apply -n default -f andmgmt-api-config-dev.yaml 
source values-dev.sh
cat ../templates/andmgmt-api-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**messages-api**

```
kubectl apply -n default -f messages-api-config-dev.yaml 
source values-dev.sh
cat ../templates/messages-api-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**idm**

```
kubectl apply -n default -f idm-config-dev.yaml 
source values-dev.sh
cat ../templates/idm-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**reporting**

```
kubectl apply -n default -f reporting-config-dev.yaml
source values-dev.sh
cat ../templates/reporting-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**playemm**

```
kubectl apply -n default -f playemm-api-config-dev.yaml 
source values-dev.sh
cat ../templates/playemm-api-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**taskmgm**

```
kubectl apply -n task -f taskmgm-config-dev.yaml 
source values-dev.sh
cat ../templates/taskmgm-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**nats-ui**

```
kubectl apply -n default  -f nats-config-dev.yaml 
source values-dev.sh
cat ../templates/nats-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**ios**

```
kubectl apply -n default -f ios-config-dev.yaml 
source values-dev.sh
cat ../templates/ios-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**certmgr**

```
kubectl apply -n default -f certmgr-config-dev.yaml 
source values-dev.sh
cat ../templates/certmgr-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**windows-api**

```
kubectl apply -n default -f windows-config-dev.yaml 
source values-dev.sh
cat ../templates/windows-deployment.yaml | envsubst | kubectl apply -n default -f -
```
**av-api**
```
kubectl apply -f av-api-config-dev.yaml -n default 
source values-dev.sh
cat ../templates/av-api-deployment.yaml | envsubst | kubectl apply -n default -f -
```
**registry**
```
kubectl apply -f registry-config-dev.yaml -n default 
source values-dev.sh
cat ../templates/registry-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**mdm-commons**
```
kubectl apply -f commons-config-dev.yaml -n default 
source values-dev.sh
cat ../templates/commons-deployment.yaml | envsubst | kubectl apply -n default -f -
```

**pipelines**
```
kubectl apply -f pipelines-config-dev.yaml -n default 
source values-dev.sh
cat ../templates/pipelines-deployment.yaml | envsubst | kubectl apply -n default -f -
```

first create eks cluster and install kubernetes and docker in instances 

aws_authentication
-------------------
we need to give below command 

kubectl get configmap aws-auth -n kube-system -o yaml 

u can get like this take it change as per your requirement

--------------------------------------------------------------------

apiVersion: v1
data:
  mapRoles: |
    - groups:
      - system:bootstrappers
      - system:nodes
      rolearn: arn:aws:iam::650732254329:role/eksctl-abn-nodegroup-abn-NodeInstanceRole-WSY7MjP88PVw
      username: system:node:{{EC2PrivateDNSName}}     
kind: ConfigMap
metadata:
  creationTimestamp: "2025-04-02T15:14:07Z"
  name: aws-auth
  namespace: kube-system
  uid: a37e2af7-989a-4a81-ad8c-38eb83522e0b

-------------------------------------------------------------------------

now need to create a policy in that need to give our clustername:abn and region:us-east-1 
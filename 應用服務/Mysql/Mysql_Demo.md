https://hub.docker.com/_/mysql

```
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:latest

```


https://kubernetes.io/zh-cn/docs/tasks/run-application/run-single-instance-stateful-application/

##  k8s
* mysql-deployment.yaml 
```
apiVersion: v1
kind: Service
metadata:
  name: mysql
spec:
  ports:
  - port: 3306
  selector:
    app: mysql
  clusterIP: None
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mysql
spec:
  selector:
    matchLabels:
      app: mysql
  strategy:
    type: Recreate
  template:
    metadata:
      labels:
        app: mysql
    spec:
      containers:
      - image: mysql:5.6
        name: mysql
        env:
          # 在实际中使用 secret
        - name: MYSQL_ROOT_PASSWORD
          value: password
        ports:
        - containerPort: 3306
          name: mysql
        volumeMounts:
        - name: mysql-persistent-storage
          mountPath: /var/lib/mysql
      volumes:
      - name: mysql-persistent-storage
        persistentVolumeClaim:
          claimName: mysql-pv-claim
          
```


* mysql-pv.yaml

```
apiVersion: v1

kind: PersistentVolume

metadata:

  name: mysql-pv-volume

  labels:

    type: local

spec:

  storageClassName: manual

  capacity:

    storage: 20Gi

  accessModes:

    - ReadWriteOnce

  hostPath:

    path: "/mnt/data"

---

apiVersion: v1

kind: PersistentVolumeClaim

metadata:

  name: mysql-pv-claim

spec:

  storageClassName: manual

  accessModes:

    - ReadWriteOnce

  resources:

    requests:

      storage: 20Gi
```




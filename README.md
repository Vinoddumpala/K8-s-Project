 Kubernetes Mini Project (Docker + Minikube)

Files:
 `Dockerfile` → Container image for the Java app
 `deployment.yaml` → Kubernetes Deployment
 `service.yaml` → Kubernetes Service
 `ingress.yaml` → Kubernetes Ingress

Steps to Run:
1. Build Docker image:
   ```bash
   docker build -t your-dockerhub-username/demo-app:latest .
   docker push your-dockerhub-username/demo-app:latest
   ```

2. Start Minikube:
   ```bash
   minikube start
   kubectl apply -f deployment.yaml
   kubectl apply -f service.yaml
   kubectl apply -f ingress.yaml   # optional
   ```

3. Check running pods & service:
   ```bash
   kubectl get pods
   kubectl get svc
   ```

4. Access the app:
   - Using NodePort → `http://<minikube-ip>:30080`
   - Using Ingress (after enabling addon) → `http://demo.local`



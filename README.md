# CRUD GOLANG DAN REACT JS

## How to run
1. Docker Compose
    ```docker
    docker compose up -d
    ```

2. Kubernetes YAML
    ```sh
    kubectl apply -f kubernetes/
    ```

3. Helm
    ```sh
    helm install go-react ./go-react-chart
    ```

4. Manual
    ```sh
    cd server
    go run main.go
    ```
    ```sh
    cd client
    npm install
    npm start
    ```
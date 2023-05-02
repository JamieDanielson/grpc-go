# grpc auto-instrumentation

## temporary start

make local docker image for auto-instrumentation agent:

```sh
# clone repo
git clone git@github.com:open-telemetry/opentelemetry-go-instrumentation.git
# navigate into new repo
cd opentelemetry-go-instrumentation
# make docker image called otel-go-instrumentation:local
make docker-build IMG=otel-go-instrumentation:local
# make sure you have it locally
docker images | grep otel-go-instrumentation
```

## setup

```sh
# build the docker images for all the go services
docker-compose build

# deploy the collector
kubectl apply -f otel-collector.yaml -n greetings

# deploy the services with the auto-instrumentation agent
kubectl apply -f hello/

# make sure everything is up and running
kubectl get pods -n greetings

# follow logs for collector (optional)
kubectl logs deployments/otel-collector --follow -n greetings
```

`curl localhost:7007`
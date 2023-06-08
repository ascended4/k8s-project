PODS=$(kubectl get pods -l app=webapp -o name)
for pod in $PODS; do
    kubectl exec $pod -- apt-get update
    kubectl exec $pod -- apt-get install stress-ng -y
done
for pod in $PODS; do
    kubectl exec $pod -- stress-ng --cpu 1 --timeout 1m &
done
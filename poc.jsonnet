function(fileContent="default") {
  apiVersion: "v1",
  kind: "ConfigMap",
  metadata: {
    name: "leak-config",
  },
  data: {
    // 这里是将变量渲染到输出的关键
    "leaked-data": fileContent
  }
}

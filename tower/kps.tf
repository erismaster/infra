resource "helm_release" "kube-prometheus-stack" {
  chart = "kube-prometheus-stack"
  repository = "https://prometheus-community.github.io/helm-charts"
  name  = "kube-prometheus-stack"

  namespace = "monitoring"
  create_namespace = true

}
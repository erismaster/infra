resource "helm_release" "cert-manager" {
  chart = "cert-manager"
  repository = "https://charts.jetstack.io"
  name  = "cert-manager"
  
  namespace = "cert-manager"
  create_namespace = true

  set {
    name  = "installCRDs"
    value = "true"
  }
}


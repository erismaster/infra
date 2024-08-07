resource "helm_release" "traefik" {
  chart = "oci://ghcr.io/traefik/helm/traefik"
#   chart = "traefik/traefik"
  name  = "traefik"

  namespace = "traefik"
  create_namespace = true

  set {
    name  = "service.spec.loadBalancerIP"
    value = "10.0.1.20"
  }
}
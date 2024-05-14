resource "helm_release" "gateway" {
  name = var.gateway_release_name
  repository = var.gateway_repository
  chart = var.gateway_chart
  version = var.gateway_version

  force_update = true
  create_namespace = true



  namespace = var.gateway_namespace

  depends_on = [ helm_release.istio-base ]

}
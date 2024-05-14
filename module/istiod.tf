resource "helm_release" "istio-base" {
  name = var.base_release_name
  repository = var.base_repository
  chart = var.base_chart
  version = var.base_version

  force_update = true

  create_namespace = true



  namespace = var.base_namespace

  set {
    name = "istioNamespace"
    value = var.base_namespace 
  }

}
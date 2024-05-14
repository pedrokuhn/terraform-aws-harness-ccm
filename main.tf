resource "harness_platform_service" "example" {
  identifier  = "testSvcForceDeleteTerraform"
  name        = "testSvcForceDeleteTerraform"
  description = "test"
  tags        = var.selected_environments
  force_delete = "true"
  yaml = <<-EOT
                service:
                  name: testSvcForceDeleteTerraform
                  identifier: testSvcForceDeleteTerraform
                  serviceDefinition:
                    spec:
                      manifests:
                        - manifest:
                            identifier: manifest1
                            type: K8sManifest
                            spec:
                              store:
                                type: Github
                                spec:
                                  connectorRef: <+input>
                                  gitFetchType: Branch
                                  paths:
                                    - files1
                                  repoName: <+input>
                                  branch: master
                              skipResourceVersioning: false
                      variables:
                        - name: var1
                          type: String
                          value: val1
                        - name: var2
                          type: String
                          value: val2
                    type: Kubernetes
                  gitOpsEnabled: false
              EOT
}

resource "linode_lke_cluster" "playground" {
    label       = "playground"
    k8s_version = "1.28"
    region      = "nl-ams"
    tags        = ["playground"]

    pool {
        # NOTE: If count is undefined, the initial node count will
        # equal the minimum autoscaler node count.
        type  = "g6-standard-1"

        autoscaler {
          min = 1
          max = 2
        }
    }
}
package custom.aws.eks.logging_api

import data.lib.result

deny[msg] {
    cluster := input.aws.eks.clusters[_]
    cluster.logging.api.value == false
    msg := "Logging api should be enabled"
}

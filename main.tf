data "confluent_ksql_cluster" "ksql_cluster_lookup" {
  for_each = var.ksql_cluster_lookup

  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }
}


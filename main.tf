data "aws_connect_user" "connect_user_lookup" {
  for_each = var.connect_user_lookup

  instance_id = each.value.instance_id
  name        = each.value.name
  region      = each.value.region
  tags        = each.value.tags
  user_id     = each.value.user_id
}


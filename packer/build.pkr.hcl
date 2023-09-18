build {
  sources = [
    "source.amazon-ebs.builder",
  ]

  provisioner "ansible" {
    host_alias = "${var.ansible_host_alias}"
    playbook_file = "${var.playbook_file_path}"
    extra_arguments  = [
      "-e", "aws_region=${var.aws_region}",
      "-e", "resource_bucket_c_libraries_prefix=${var.resource_bucket_c_libraries_prefix}",
      "-e", "resource_bucket_name=${var.resource_bucket_name}",
      "-e", "resource_bucket_informix_prefix=${var.resource_bucket_informix_prefix}",
      "-e", "resource_bucket_informix_sdk_prefix=${var.resource_bucket_informix_sdk_prefix}",
      "-e", "resource_bucket_oracle_instant_client_prefix=${var.resource_bucket_oracle_instant_client_prefix}",
      "-e", "swap_volume_device_node=${var.swap_volume_device_node}",
      "-e", "swap_volume_enabled=${var.swap_volume_size_gb > 0 ? true : false}"
    ]
  }
}

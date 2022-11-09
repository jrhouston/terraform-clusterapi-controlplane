resource null_resource example {
  provisioner "local-exec" {
    command = "echo test configuration"
  }
}

resource null_resource example2 {
  provisioner "local-exec" {
    command = "echo test configuration 2"
  }
}

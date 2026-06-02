resource "local_file" "pet" {
  filename = var.filename
  content  = var.content["second"]
  lifecycle {
    create_before_destroy = true
  }
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix[0]
  separator = var.separator
  length    = var.length
  lifecycle {
    prevent_destroy = false
  }

}

data "local_file" "dogs"{
  filename = "./dogs.txt"
}

resource "local_file" "datasource_ref" {
  filename = "./dataref.txt"
  content = data.local_file.dogs.content
}
resource "aws_instance" "example" {
  ami           = "var.edf-vm1"
  instance_type = "var.vm-size"

  tags = {
    Name = "var.vm-name"
  }
}
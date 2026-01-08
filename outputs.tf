output "edf-vm1-publicIP" {
    value = aws_instance.example.*.public_ip
}

output "edf-vm1" {
   value = [ for i in aws_instance.example: i.id ]
}
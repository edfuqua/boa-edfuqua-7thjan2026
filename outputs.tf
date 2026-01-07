output "edf-vm1-publicIP" {
    value = aws_instance.example.public_ip
}

output "edf-vm1" {
   value = aws_instance.example.id 
}
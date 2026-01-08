data "aws_vpc" "example" {
 
    id = "vpc-07eede624774fec02"
}

resource "aws_security_group" "allow_tls" {
  name        = "efuq_allow_boa_rules" # changed here
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.example.id # changed here
 
  tags = {
    Name = "efuq_allow_boa_rules" # changed here
  }
}
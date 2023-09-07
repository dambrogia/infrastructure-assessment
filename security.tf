# assign the public_key variable a key_pair in aws
# this will allow you to ssh into the instances
# with the key of your choosing
resource "aws_key_pair" "helloworld" {
    key_name = "helloworld"
    public_key = var.public_key
}

resource "aws_security_group" "allow_http_web" {
    # @todo - allow access from elb to web instances. might need additional to allow internet -> elb:80?
    # Don't worry about locking things down explicitly, 0.0.0.0/0 ingress is fine
    # as a proof of concept.
}

resource "aws_security_group" "allow_ssh_bastion" {
  # @todo - allow ssh access to ec2 instances
  # Don't worry about locking things down explicitly, 0.0.0.0/0 ingress is fine
    # as a proof of concept.
}

resource "aws_security_group" "allow_rds_web" {
  # @todo - allow access from ec2 instances into RDS
}

resource "aws_security_group" "allow_rds_bastion" {
  # @todo - allow access from bastion instance into RDS
}

resource "aws_security_group" "allow_web_bastion" {
  # @todo - allow http access from bastion instance into web instances
}

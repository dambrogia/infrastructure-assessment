# Create web0 instance
resource "aws_instance" "web0" {
    # @todo
    # must be in private network
    # use userdata to install basic dependencies:
    # - apache/nginx, mysql-client
    #   user_data = <<EOF2
    # #!/bin/bash
    # # install apache and mysql client
    # apt update && apt install -y apache2 mysql-client;
    # # verify apache2 is started & enabled
    # systemctl enable apache2 && systemctl start apache2;
    # # overwrite the default html
    # echo "Hello I'm web0!" > /var/www/html/index.html;
    # # ensure no caching for this test
    # echo "<IfModule mod_headers.c>
    #     Header set Cache-Control "no-cache, no-store, must-revalidate"
    #     Header set Pragma "no-cache"
    #     Header set Expires 0
    # </IfModule>" > /var/www/html/.htaccess
    # # restart apache2
    # systemctl restart apache2;
    # EOF2
}

# Create web1 instance
resource "aws_instance" "web1" {
  # @todo - same as web0, just with different response:
  # echo "Hello I'm web1!" > /var/www/html/index.html;
}

# Create web1 instance
resource "aws_instance" "bastion" {
  # @todo - create a bastion in a public network to access the private nodes
}


# Create a load balancer
resource "aws_elb" "helloworld_elb" {
  # @todo - load balance between two ec2 instances
  # must be in public network / publicly accessible
}

# database
resource "aws_db_instance" "helloworld" {
  # @todo - must be in private network / not publicly accessible
}

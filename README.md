# Infrastructure Assessment
Create the following:
- web server 0 (private network)
- web server 1 (private network)
- bastion (public network)
- elastic load balancer (public network)
- rds instance (private network)
- security groups

Do the requirements above by following these steps:

1. Branch off of `master` with a branch named `your-name`.
    - **DO NOT SUBMIT A PR, JUST PUSH YOUR BRANCH TO THE ORIGIN**.
1. Edit the pre-scaffolded `main.tf` and `security.tf` files to create the resources as described
1. Add your public key to test.tfvars
1. Run terraform to create the resources
1. Take screenshots of your completed infrastructure as described in `example-images`, but place yours in `images`. `example-images` is missing a bastion image, please include one that shows MySQL client access + curl/http access to web nodes.

**If you run into any issues, feel free to hack away at the scaffolded .tf templates and share what issues you ran into.**

### Requirements
- awscli
- us-east-2 (specified in `provider.tf`)
- The AWS account needs to be a vanilla account with one vpc in us-east-2 in order for the vpc data source to accurately find the VPC ID.
    - You can also use [`terraform-aws-modules/vpc/aws`](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest#usage) module if you're inclined. But it isn't a requirement. Do whatever is the most simple for you. Prioritize your time allocation above all else.
    - If you use this module, you can hardcode the VPC values for simplicity,

#### This is intended to be an assessment not a production project. If you can save time by cutting corners and still provide all the requirements, feel free to write a note about how you would have done it better with more time.

  --------------

### Images
![terraform]

[terraform]: example-images/terraform.png "Terraform Screenshot"

![loadbalancer]

[loadbalancer]: example-images/loadbalancer.png "Loadbalancer Screenshot"

![database]

[database]: example-images/database.png "Database Screenshot"

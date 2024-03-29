module "network" {
  source              = "../../"
  network_name        = "my-network"
  network_tags        = ["mytag", "project"]
  network_description = "MyNetwork description"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_cidr     = "10.10.10.0/24"
      subnet_ip_version = 4
      subnet_tags = "mysubnet, myproject, mytag"
      allocation_pool_start = "10.10.10.2"
      allocation_pool_end = "10.10.10.254"
    }
  ]
}

output "VPC-ID-US-EAST-1" {
  value = aws_vpc.vpc_master.id

}

output "VPC-ID-US-WEST-2" {
  value = aws_vpc.vpc_master_oregon.id
}

output "PEERING-CONNECTION-ID" {
  value = aws_vpc_peering_connection.useast1-uswest2.id
}

output "Jenkins-Main-Node-Public-IP" {
  value = aws_instance.jenkins-master.public_ip
}

output "Jenkins-Worker-Public-IPs" {
  value = {
    for instance in aws_instance.jenkins-worker-oregon :
    instance.id => instance.public_ip
  }
}

#Add LB DNS name to outputs.tf
output "LB-DNS-NAME" {
  value = aws_lb.application-lb.dns_name
}

output "amiId-us-east-1" {
  value = data.aws_ssm_parameter.linuxAmi.value
}

output "amiId-us-west-2" {
  value = data.aws_ssm_parameter.linuxAmiOregon.value
}

output "Jenkins-Main-Node-Private-IP" {
  value = aws_instance.jenkins-master.private_ip
}

output "Jenkins-Worker-Private-IPs" {
  value = {
    for instance in aws_instance.jenkins-worker-oregon :
    instance.id => instance.private_ip
  }
}

output "url" {
  value = aws_route53_record.jenkins.fqdn
}

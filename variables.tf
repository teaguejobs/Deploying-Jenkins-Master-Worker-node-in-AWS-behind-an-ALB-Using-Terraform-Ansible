variable "profile" {
  type    = string
  default = "default"
}

variable "region-master" {
  type    = string
  default = "us-east-1"
}

variable "region-worker" {
  type    = string
  default = "us-west-2"
}


variable "external_ip" {
  type    = string
  default = "0.0.0.0/0"
}

variable "workers-count" {
  type    = number
  default = 1
}

variable "instance-type" {
  type    = string
  default = "t3.micro"
}

#Add the variable webserver-port to variables.tf
variable "webserver-port" {
  type    = number
  default = 8080
}

variable "site-name" {
  type    = string
  default = "mysite"
}
variable "dns-name" {
  type    = string
  default = "652662596920.realhandsonlabs.net." # e.g "cmcloudlab1234.info."
}



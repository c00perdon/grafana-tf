variable "grafana_ip" {
  type    = string
  description = "IP address of Grafana instance"
  default = "localhost"  # Replace with your Grafana IP
}

variable "grafana_port" {
  type    = number
  description = "Port of Grafana instance"
  default = 3000  # Replace with your Grafana port
}

variable "grafana_url" {
  description = "URL of the Grafana instance"
  type        = string
}

variable "grafana_auth" {
  description = "Authentication details for Grafana"
  type        = string
}

variable "group_name" {
  description = "Name of the Grafana user group"
  type        = string
}

variable "group_email" {
  description = "Email associated with the Grafana user group"
  type        = string
}
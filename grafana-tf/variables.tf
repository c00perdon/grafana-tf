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

provider "grafana" {
  # Grafana provider configuration
  api_url  = "http://<grafana-ip>:<grafana-port>"  # Replace with your Grafana IP and port
  username = "admin"  # Replace with your Grafana admin username
  password = "admin"  # Replace with your Grafana admin password
}

resource "grafana_dashboard" "example_dashboard" {
  # Resource to define a Grafana dashboard
  provider = grafana

  dashboard_json = <<EOF
{
  "editable": true,
  "title": "Example Dashboard",
  "panels": [
    {
      "type": "graph",
      "title": "Example Graph Panel",
      "targets": [
        {
          "refId": "A",
          "expr": "example_metric{job=\"example\"}"
        }
      ]
    }
  ]
}
EOF
}

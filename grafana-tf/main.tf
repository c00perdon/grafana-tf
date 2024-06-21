terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "~> 3.2.0"  # Adjust the version constraint as needed
    }
  }
}

provider "grafana" {
  url  = "http://192.168.49.2:30451"
  auth = "admin:1qaz-2wsx"
}

resource "grafana_dashboard" "example_dashboard" {
  # Resource to define a Grafana dashboard
  provider = grafana

  config_json = <<EOF
  {
    "editable": true,
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

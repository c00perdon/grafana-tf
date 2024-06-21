terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "~> 3.2.0"  # Adjust the version constraint as needed
    }
  }
}

provider "grafana" {
  url  = "http://127.0.0.1:60420"
  auth = "admin:1qaz-2wsx"
}

resource "grafana_dashboard" "example_dashboard" {
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
    ],
    "title": "Example Dashboard",
    "schemaVersion": 16,
    "version": 0
  }
  EOF
}

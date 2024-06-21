terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">= 6.0.0"
    }
  }
}

provider "grafana" {
  # Provider configuration (will be set dynamically in the GitHub Actions workflow)
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

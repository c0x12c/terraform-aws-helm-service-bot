variable "service_name" {
  description = "The name of the service"
  type        = string
  default     = "service-bot"
}

variable "alb_dns" {
  description = "The DNS name of the ALB"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "eks_oidc_provider" {
  description = "The OIDC provider for the EKS cluster"
  type        = object({ arn = string, url = string })
}

variable "namespace" {
  description = "The namespace to deploy the service"
  type        = string
  default     = "service-bot"
}

variable "micronaut_env" {
  description = "The micronaut environment"
  type        = string
  default     = "dev"
}

variable "app_domain" {
  description = "The application domain"
  type        = string
  default     = "example.com"
}

variable "slack_signing_secret" {
  description = "Slack signing secret"
  type        = string
  sensitive   = true
}

variable "slack_bot_token" {
  description = "Slack bot token"
  type        = string
  sensitive   = true
}

variable "slack_user_token" {
  description = "Slack user token"
  type        = string
  sensitive   = true
}

variable "slack_bot_user_id" {
  description = "Slack bot user ID"
  type        = string
}

variable "allowed_slack_channel" {
  description = "Allowed Slack channel"
  type        = string
}

variable "on_call_slack_channel" {
  description = "On-call Slack channel"
  type        = string
  default     = "on-call"
}

variable "slack_user_group_names" {
  description = "Slack user group names"
  type        = string
  default     = "dev-system"
}

variable "slack_channel_prefix" {
  description = "Slack channel prefix"
  type        = string
  default     = "prj-spartan-"
}

variable "github_org" {
  description = "GitHub organization name"
  type        = string
}

variable "app_repo_list" {
  description = "List of application repositories"
  type        = list(string)
}

variable "infra_repo_list" {
  description = "List of infrastructure repositories"
  type        = list(string)
  default     = []
}

variable "atlassian_host" {
  description = "Atlassian host URL"
  type        = string
  default     = "https://example.atlassian.net"
}

variable "jenkins_username" {
  description = "Jenkins username"
  type        = string
}

variable "jenkins_api_token" {
  description = "Jenkins API token"
  type        = string
  sensitive   = true
}

variable "jenkins_host" {
  description = "Jenkins host URL"
  type        = string
  default     = "https://jenkins.example.com"
}

variable "jenkins_repository" {
  description = "Jenkins repository"
  type        = string
  default     = "jenkins-job-dsl-scripts"
}

variable "atlassian_username" {
  description = "Atlassian username"
  type        = string
}

variable "atlassian_api_token" {
  description = "Atlassian API token"
  type        = string
  sensitive   = true
}

variable "atlassian_page_path_prefix" {
  description = "Atlassian page path prefix"
  type        = string
  default     = "wiki/spaces/C0X12C/pages"
}

variable "space_id" {
  description = "Confluence Space ID"
  type        = string
  default     = "12779524"
}

variable "on_call_page_id" {
  description = "On-call page ID"
  type        = string
  default     = "48660500"
}

variable "on_call_template_page_id" {
  description = "On-call template page ID"
  type        = string
  default     = "30736481"
}

variable "on_call_process_page_id" {
  description = "On-call process page ID"
  type        = string
  default     = "41812488"
}

variable "github_login" {
  description = "GitHub login"
  type        = string
}

variable "github_pat" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "http_client_log_level" {
  description = "HTTP client log level"
  type        = string
  default     = "INFO"
}

variable "spartan_chart_version" {
  description = "Version of the Spartan Helm chart to deploy"
  type        = string
  default     = "0.1.18"
}

variable "service_bot_image_repository" {
  description = "Docker image for the service bot"
  type        = string
  default     = "ghcr.io/spartan-stratos/service-bot"
}

variable "service_bot_image_tag" {
  description = "Docker image tag for the service bot"
  type        = string
  default     = "dev-20251208-7a4748f3"
}

variable "service_resources" {
  description = "Kubernetes resource requests and limits for the service bot"
  type        = map(map(string))
  default = {
    requests = {
      cpu    = "200m"
      memory = "1Gi"
    }
    limits = {
      memory = "1Gi"
    }
  }
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "route53_zone_id" {
  description = "Route53 hosted zone ID"
  type        = string
}

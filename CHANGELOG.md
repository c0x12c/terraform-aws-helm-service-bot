# Changelog

All notable changes to this project will be documented in this file.

## [0.2.0]() (2025-12-09)

### Refactoring

* Renamed `micronaut_env` variable to `environment`.

### Chore

* Updated Terraform required version to `>= 1.10`.

## [0.1.0]() (2025-12-09)

### Features

* Initial implementation of Service Bot module.
* Deploys Service Bot using Helm chart `spartan`.
* Configures EKS service with `c0x12c/eks-service/aws`.
* Sets up integrations for Slack, GitHub, Jenkins, and Atlassian.
* Supports external secrets and config maps.

# Use Terraform for Multi-Cloud Resource Deployment

* Status: Accepted
* Deciders: Cloud Platform Team
* Date: 2025-05-14

Technical Story: Multi-Cloud Resource Deployment

## Context and Problem Statement

The organization has adopted a multi-cloud strategy (Azure, AWS) requiring a unified Infrastructure as Code (IaC) tool to manage resources across all platforms. The previous decision to use Bicep (ADR - 0001) no longer meets this need due to its Azure only focus.

## Decision Drivers

* Multi-Cloud Support
* Collaboration

## Considered Options

* Terraform
* Bicep

## Decision Outcome

Chosen option: "Terraform", because It is a standard IaC tool for all cloud resource deployments

### Positive Consequences

* Multi cloud support
* Robust State management
* Large Ecosystem

### Negative Consequences

* state file management overhead
* learning HCL

## Links

* Related ADRs: [Superseded ADR - 0001] (docs/decisions/0001-use-bicep-for-azure-resources-deployment.md)

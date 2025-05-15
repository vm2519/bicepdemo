# Use Bicep for Azure Resources Deployment

* Status: Superseded
* Deciders: Cloud Platform team
* Date: 2025-05-13

Technical Story: Azure Resources Deployment

## Context and Problem Statement

We need a scalable, maintainable and collaborative method to deploy Azure resources consistently across environments (non prod, prod). The existing process uses manual Azure Portal configurations leading to environment drift and inconsistency.

## Decision Drivers

* we will use Bicep as the primary IAC tool for provisioning Azure resources

## Considered Options

* Bicep
* ARM Templates
* Terraform

## Decision Outcome

Chosen option: "Bicep", because Bicep is designed and supported by Microsoft, ensuring compatability with new Azure features. Simplified syntax compared to ARM JSON. Works seamlessly with Azure DevOps pipelines and Github Actions. Avoids managing state files.

### Positive Consequences

* -**Consistency**: Eliminate environment drift with version controlled deployments.
* -**Collaboration**: Teams can review and modify Bicep files via PRs.
* -**Speed**: Reusable module reduce duplication

### Negative Consequences

* -**Lock-in**: Bicep is Azure only, multi cloud projects need additional tools.

## Links

* - [Bicep documentation] (https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/)
* [Superseded by ADR 0002] (https://github.com/vm2519/bicepdemo/blob/adrdemo/docs/decisions/0002-use-terraform-for-multi-cloud-resource-deployment.md)

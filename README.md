# Terraform Generic Module Template

This repository provides a generic template for a Terraform module. It's designed to be a starting point for creating new Terraform modules, offering a consistent structure and pre-configured CI/CD elements.


## Usage

To use this template, copy its contents to your new module repository. Then, you can reference your module like this:

```hcl
module "my_module" {
  source = "./path/to/your/module" # Or your module's Git URL

  # Example of a common variable in Terraform modules
  tags = {
    Environment = "dev"
    Project     = "MyAwesomeProject"
  }
}
```

## Examples

Refer to the [complete example](examples/complete) for a basic implementation of how this module can be used.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.8 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

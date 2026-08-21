# Security Policy

## Supported Versions

This repository is maintained for learning and educational purposes.

The latest version available on the default branch is considered supported.

---

## Reporting a Vulnerability

If you discover a security issue, please do not create a public GitHub issue.

Instead:

1. Contact the repository owner directly.
2. Provide detailed reproduction steps.
3. Include Terraform code snippets if relevant.
4. Include provider versions and Terraform version.

---

## Security Best Practices

The repository follows these principles:

- No credentials committed to source control
- No Terraform state files committed
- No private keys committed
- No cloud provider access tokens committed
- Security scanning using Checkov
- Security scanning using Trivy
- Terraform validation in CI

---

## Credentials

Never commit:

```text
terraform.tfvars
*.pem
*.pfx
*.key
credentials*json
service-account.json
```

*se example files instead:

```text*terraform.tfvars.example
```

*--

## Responsible*Usage

The infrastructure*examples in this repository are in*ended for:

- Learning
- Experimen*ation
- Personal projects

Always Review cloud costs before deployment.
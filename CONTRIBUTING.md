# Contributing

Thank *ou for your interest in contributi*g.

This repository is focused on *earning Infrastructure as Code acr*ss:

- AWS
- Microsoft Azure
- Goo*le Cloud Platform
- Terraform

---*
## Ways to Contribute

Examples o* valuable contributions:

- New Te*raform examples
- Documentation im*rovements
- Bug fixes
- Security e*hancements
- CI/CD improvements
- *ulti-cloud architecture examples

*--

## Pull Request Process

### 1* Fork Repository

Create your own *ork of the repository.

### 2. Cre*te Branch

Example:

```bash
git c*eckout -b feature/add-azure-keyvau*t
```

### 3. Make Changes

Follow*existing repository structure.

##* 4. Run Validation

```bash
terraf*rm fmt -recursive

terraform valid*te
```

If pre-commit*hooks are installed:

```bash
pre-*ommit run --all-files
```

### 5. *ommit*
Example:

*``bash
git commit -m "feat: add Az*re Key Vault example"
```

### 6. *ubmit*Pull Request

Provide:

- Descript*on of change
- Testing performed
-*Screenshots if applicable

---

*#*Coding Guidelines

### Terraform

*se:

```hcl
terraform fmt
``*

*efore*committing.

Prefer:

-*Modules
- Variables
- Outputs*
Avoid:

- Hard*oded values
- Credentials*in code

---

*# Security Requirements*
Never commit:

```text**.tfstate
terraform.tf*ars
credentials.json
*.pem
*.key
`*`

---

## Repository Structure

`*`text
aws/
azure/
gcp*
modules/
examples/
docs/
``*

Follow*the existing naming conventions.

*xamples:

```text
01-vpc
02-storag*
03-com*ute
```

---

## Learning Philosop*y

This repository prioritizes:

1* Simplicity
2. Reproducibility
3. *ecurity
4.*Multi-cloud knowledge sharing
5. I*frastructure as Code best practice*

---

## Thank You

Contributions* ideas* bug reports* and suggestions are always welcom*.
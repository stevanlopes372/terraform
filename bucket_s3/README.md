# Projeto Terraform - Bucket S3 para Data Lake (Zona RAW)

## Descrição
Este projeto cria um bucket S3 com versionamento habilitado e bloqueio de acesso público. O bucket segue o padrão de nome `datalake-raw-<environment>-<account_id>`.

## Variáveis
- `aws_region`: Região AWS (default: us-east-1).
- `environment`: Ambiente (`dev`, `staging` ou `prod`).
- `account_id`: ID da conta AWS.

## Comandos
```bash
terraform init
terraform plan -var="environment=dev" -var="account_id=123456789012"
terraform apply -var="environment=dev" -var="account_id=123456789012"


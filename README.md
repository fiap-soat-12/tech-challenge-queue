<div align="center">

# Tech Challenge - Queue

![GitHub Release Date](https://img.shields.io/badge/Release%20Date-Fevereiro%202025-yellowgreen)
![](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellowgreen)
<br>
![](https://img.shields.io/badge/Version-%20v1.0.0-brightgreen)
</div>

## 💻 Descrição

Este repositório é responsável criar as filas.


## 🛠 Tecnologias Utilizadas

<div align="center">

![Github Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=for-the-badge&logo=GitHub-Actions&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![SQS](https://img.shields.io/badge/Amazon%20SQS-FF4F8B.svg?style=for-the-badge&logo=Amazon-SQS&logoColor=white)

</div>

## ⚙️ Configuração

### Pré-requisitos

1. É necessário executar a pipeline para criar o VPC no repositório: https://github.com/fiap-soat-12/tech-challenge-vpc

### Desenvolvimento

- **[Terraform](https://www.terraform.io/)**: Site oficial do Terraform.
- **[AWS](https://aws.amazon.com/pt/)**: Site oficial da AWS.

## 🚀 Execução

### Subindo o Queue

  Caso deseje subir as filas, basta seguir os seguintes passos:
  
  1. Certificar que o Terraform esteja instalado executando o comando `terraform --version`;
  ![terraform-version](./assets/terraform-version.png)

  2. Certificar que o `aws cli` está instalado e configurado com as credenciais da sua conta AWS;
  ![aws-cli-version](./assets/aws-cli-version.png)

  3. Acessar a pasta `terraform` que contém os arquivos que irão criar as filas;
  4. Inicializar o Terraform no projeto `terraform init`;
  5. Verificar que o script do Terraform é valido rodando o comando `terraform validate`;
  6. Executar o comando `terraform plan` para executar o planejamento da execução/implementação;
  7. Executar o comando `terraform apply` para criar as filas;
  8. Após a execução do Terraform finalizar, verificar se as filas subiram corretamente na AWS;
  ![lambda-auth-aws-image](./assets/sqs.png)

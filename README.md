# azure-iac-challenge
Este repositório contém um desafio técnico para profissionais, abordando a criação de infraestrutura na Azure utilizando Terraform, com pipelines de CI/CD orquestrados pelo Azure DevOps.  Inclui a implementação de serviços essenciais, segurança com Managed Identities e Azure Key Vault, além de boas práticas de modularização.

# Desafio Técnico: Terraform com Azure e Azure DevOps

## Descrição do Desafio
Automatize a criação da infraestrutura de uma aplicação web na **Azure** utilizando **Terraform** e implemente um pipeline de CI/CD com **Azure DevOps**.

O desafio tem como objetivo avaliar habilidades técnicas, boas práticas e a capacidade de automação na infraestrutura como código.

## Escopo da Infraestrutura
A infraestrutura deve conter:

- **Azure App Service (Linux)** para hospedagem de uma aplicação web (Python ou Node.js).
- **Azure Application Insights** para monitoramento e logs.
- **Azure Key Vault** para gerenciamento de segredos.
- **Azure Storage Account** para armazenamento de arquivos estáticos.
- **Azure Virtual Network** com Subnet para isolar o App Service.
- **Azure SQL Database** (opcional, para avaliar serviços PaaS).

## Requisitos Técnicos
### Terraform
- Utilize **módulos reutilizáveis** para cada recurso.
- Configure **Remote State** utilizando Azure Storage + Access Key.
- Use **Managed Identity** para permitir o acesso seguro entre recursos.
- Defina **outputs** e **data sources** para compartilhamento de informações entre módulos.
- Gerencie variáveis sensíveis com **Key Vault**.

### Azure DevOps
- Crie um pipeline YAML para:
  - Validação do código Terraform.
  - Planejamento da execução (plan).
  - Aprovação manual para execução.
  - Aplicação da infraestrutura (apply).
  - Destruição da infraestrutura para limpeza (destroy).

### Boas Práticas
- Organização do código (estrutura de diretórios).
- Reutilização de módulos.
- Segurança (Managed Identities, Key Vault, RBAC).
- Versionamento de módulos e providers.
- Documentação clara do projeto.

## Como Entregar
1. Crie um repositório Git (público no GitHub ou privado no Azure DevOps).
2. Configure o pipeline no Azure DevOps.
3. Inclua um arquivo **README.md** com as instruções de execução.
4. Opcional: Adicione um diagrama de arquitetura.
5. Descreva as decisões técnicas tomadas durante o desenvolvimento.

## Critérios de Avaliação
| Critério                    | Descrição                                        |
|-----------------------------|------------------------------------------------|
| Qualidade do Código         | Organização, legibilidade e boas práticas       |
| Segurança                  | Uso de Managed Identities, Key Vault e RBAC    |
| Automação                  | Configuração completa do pipeline CI/CD        |
| Reutilização de Módulos     | Uso eficiente de módulos Terraform             |
| Documentação               | Clareza e detalhamento nas instruções          |
| Gestão de Estados          | Configuração segura de remote state           |

## Observações
- Sinta-se à vontade para incluir testes de integração ou validação da infraestrutura.

Boa sorte!


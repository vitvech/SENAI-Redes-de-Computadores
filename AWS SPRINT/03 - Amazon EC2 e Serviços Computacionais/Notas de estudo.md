# 📝 Notas de estudo

## Professor
Tadau

---

# 🖥️ Serviços Computacionais AWS

A AWS oferece diversos serviços computacionais para executar aplicações, sistemas e cargas de trabalho.

Os principais serviços abordados foram:

- Amazon EC2
- Amazon ECS
- Amazon EKS
- AWS Fargate
- Elastic Beanstalk
- AWS Lambda

---

# Amazon EC2 (Elastic Compute Cloud)

O Amazon EC2 fornece máquinas virtuais chamadas de **instâncias**.

Ele permite executar servidores na nuvem com controle sobre:

- Sistema operacional;
- CPU;
- Memória RAM;
- Armazenamento;
- Rede.

Uma instância EC2 funciona de forma semelhante a um servidor físico local.

Tudo que pode ser feito em um servidor tradicional também pode ser feito na nuvem.

---

# Características do EC2

## Controle do Sistema Operacional

O usuário possui controle sobre o sistema operacional da máquina virtual.

Exemplos:

- Instalação de softwares;
- Configurações;
- Serviços;
- Permissões.

---

## Serviço Regional

Uma instância EC2 pertence a uma região específica da AWS.

Para mover uma máquina entre regiões é necessário realizar processos como migração ou criação de uma nova imagem.

---

# Segurança no EC2

## Security Groups

Funcionam como um firewall básico baseado em portas.

Exemplos:

- Porta 22 → SSH
- Porta 80 → HTTP
- Porta 443 → HTTPS

Os Security Groups são **stateful**, ou seja:

Se uma conexão de entrada é permitida, o retorno também é permitido automaticamente.

---

## ACL (Access Control List)

Camada adicional de controle de tráfego da rede.

Opera em nível de subnet.

---

# AMI (Amazon Machine Image)

Uma AMI é uma imagem utilizada para criar instâncias EC2.

Ela pode conter:

- Sistema operacional;
- Aplicações instaladas;
- Configurações personalizadas.

Tipos de AMI:

## Quick Start

Imagens fornecidas pela própria AWS.

## Minhas AMIs

Imagens criadas pelo próprio usuário.

## AWS Marketplace

Imagens pré-configuradas de terceiros.

## AMIs da comunidade

Imagens compartilhadas por outros usuários.

⚠️ Não recomendado utilizar sem verificar a confiabilidade.

---

# Tipos de Instância EC2

O tipo da instância define:

- CPU;
- Memória RAM;
- Armazenamento;
- Desempenho de rede.

Exemplo:

```
t3.large

t → família da instância
3 → geração
large → tamanho
```

---

# Escalabilidade

Existem duas formas principais:

## Upgrade vertical

Aumentar recursos de uma máquina existente.

Exemplo:

- Mais CPU;
- Mais memória;
- Mais armazenamento.

## Elasticidade

Criar ou remover várias máquinas conforme a demanda.

---

# EC2 Auto Scaling

Permite criar ou remover instâncias automaticamente conforme a necessidade da aplicação.

---

# Outros Serviços Computacionais AWS

## ECS

Serviço para gerenciamento de containers.

## EKS

Serviço gerenciado de Kubernetes.

## Fargate

Executa containers sem necessidade de administrar servidores.

## Elastic Beanstalk

Plataforma gerenciada para criação e implantação de aplicações.

## Lightsail

Serviço simplificado para aplicações menores.

---

# Rede no EC2

Estrutura:

```
Região AWS
    ↓
Zona de Disponibilidade
    ↓
VPC
    ↓
Subnet pública
    ↓
Instância EC2
```

---

# Endereçamento IP

## IP Público

Pode ser atribuído automaticamente durante a criação da instância.

## Elastic IP

IP público fixo associado à instância.

Utilizado quando é necessário manter o mesmo endereço público.

---

# Armazenamento no EC2

## Volume raiz

Local onde o sistema operacional está instalado.

---

## Armazenamento temporário

Discos temporários ligados ao host físico.

Usado principalmente em algumas instâncias específicas.

---

# Amazon EBS (Elastic Block Store)

Serviço de armazenamento em bloco para instâncias EC2.

Características:

- Disco virtual;
- Pode ser configurado conforme necessidade;
- Pode utilizar criptografia;
- Permite separar armazenamento da máquina virtual.

Tipos:

## SSD

Maior velocidade.

## HDD

Maior capacidade de armazenamento.

---

# Amazon EFS (Elastic File System)

Sistema de arquivos compartilhado da AWS.

Permite armazenamento de arquivos acessível por múltiplas máquinas.

---

# Tags

Utilizadas para:

- Organização;
- Filtragem;
- Automação;
- Controle de custos.

---

# Par de Chaves (Key Pair)

Método de autenticação utilizado para acesso remoto seguro às instâncias.

Exemplo:

Acesso SSH em servidores Linux.

---

# Observações

- Reiniciar uma instância não altera o IP ou DNS.
- Parar uma instância e iniciar novamente pode alterar o IP público.

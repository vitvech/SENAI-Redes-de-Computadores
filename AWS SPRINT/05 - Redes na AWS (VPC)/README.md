# 🌐 Redes na AWS - Amazon VPC

## 📖 Sobre

Neste módulo foram estudados os principais conceitos de redes dentro da AWS, utilizando o serviço **Amazon VPC (Virtual Private Cloud)**.

Foram realizados laboratórios práticos envolvendo criação de redes virtuais, segmentação através de sub-redes, configuração de rotas, comunicação entre VPCs e implantação de uma aplicação web utilizando EC2 e RDS.

---

# 🎯 Objetivo

Compreender como estruturar uma arquitetura de rede dentro da AWS, aplicando conceitos utilizados em ambientes corporativos:

- Planejamento de endereçamento IP;
- Segmentação de redes;
- Segurança;
- Alta disponibilidade;
- Comunicação entre serviços.

---

# 📚 Conteúdos estudados

## Amazon VPC

Conceitos e práticas relacionadas à criação de redes virtuais:

- Criação de VPC;
- Blocos CIDR;
- Sub-redes públicas e privadas;
- Zonas de disponibilidade;
- Tabelas de rotas;
- Internet Gateway;
- Security Groups.

---

## VPC Peering

Configuração de comunicação entre diferentes VPCs.

Foram estudados:

- Criação de conexão de emparelhamento;
- Comunicação entre regiões;
- Configuração de rotas;
- Problemas de sobreposição de CIDR;
- Correção de conflitos de rede.

---

## Servidor Web EC2 + RDS

Implementação de uma arquitetura web utilizando:

- Amazon EC2;
- Amazon RDS;
- Security Groups;
- Amazon Linux;
- Apache;
- PHP;
- MySQL.

---

# 🏗️ Arquitetura desenvolvida

Modelo criado durante os laboratórios:

```
Internet

   |

Internet Gateway

   |

EC2
Servidor Web
(Sub-rede Pública)

   |

RDS
Banco de Dados
(Sub-rede Privada)
```

---

# 🛠️ Laboratórios realizados

## Laboratório 01 - Amazon VPC

Práticas:

- Criação de VPC;
- Criação de sub-redes;
- Separação entre ambiente público e privado;
- Configuração de rotas;
- Associação de Internet Gateway.

---

## Laboratório 02 - VPC Peering

Práticas:

- Conexão entre VPCs;
- Comunicação entre regiões AWS;
- Ajuste de tabelas de rotas;
- Resolução de conflito de CIDR.

---

## Laboratório 03 - Servidor Web EC2 + RDS

Práticas:

- Criação de instância EC2;
- Configuração de acesso SSH e HTTP;
- Criação de banco RDS;
- Integração entre aplicação e banco;
- Teste de acesso via navegador.

---

# 📁 Arquivos do módulo

```
05 - Redes na AWS (VPC)

├── README.md
├── Amazon VPC.md
├── VPC Peering.md
└── Servidor Web EC2 + RDS.md
```

---

# 💡 Conhecimentos adquiridos

Após este módulo, foi possível compreender como criar uma infraestrutura básica de rede na AWS.

Os principais conhecimentos desenvolvidos foram:

- Construção de redes virtuais;
- Organização de ambientes públicos e privados;
- Comunicação entre redes;
- Controle de acesso;
- Implantação de aplicações em arquitetura distribuída.

# Servidor Web EC2 + RDS

## 📖 Conceito

Neste laboratório foi criada uma arquitetura utilizando:

- Amazon EC2 para hospedar o servidor web;
- Amazon RDS para banco de dados;
- Amazon VPC para isolamento da rede;
- Security Groups para controle de acesso.

A arquitetura representa uma aplicação web tradicional:

```
Usuário
   |
Internet
   |
EC2 (Servidor Web)
   |
RDS (Banco de Dados)
```

---

# Referência utilizada

Laboratório baseado na documentação oficial da AWS:

Tutorial de criação de aplicação Web com Amazon RDS.

---

# 1 - Criando Security Group do servidor Web

Acessar:

```
EC2
→ Security Groups
→ Criar grupo de segurança
```

Configuração:

Nome:

```
tutorial-securitygroup
```

Descrição:

```
tutorial-securitygroup
```

VPC:

Selecionar a VPC criada anteriormente.

---

## Regras adicionadas

### SSH

Porta:

```
22
```

Utilizado para acesso remoto ao servidor.

---

### HTTP

Porta:

```
80
```

Utilizado para acesso ao servidor web.

---

# 2 - Criando Security Group do banco de dados

Criar novo grupo:

Nome:

```
tutorial-db-securitygroup
```

Descrição:

```
tutorial-db-securitygroup
```

VPC:

Selecionar a VPC criada anteriormente.

---

Regra adicionada:

```
MySQL/Aurora
```

Essa regra permite comunicação entre o servidor web e o banco de dados.

---

# 3 - Criando instância EC2

Acessar:

```
EC2
→ Executar instância
```

Configuração utilizada:

Nome:

```
tutorial-ec2-instance-web-server
```

Imagem:

```
Amazon Linux
```

Tipo:

```
t3.micro
```

Par de chaves:

```
vockey
```

---

# Configuração de rede

Selecionar:

VPC:

```
VPC criada anteriormente
```

Sub-rede:

```
Subnet pública
```

IP público:

```
Ativado
```

Security Group:

```
tutorial-securitygroup
```

---

Armazenamento:

```
8 GB
```

---

# Perfil IAM

Em detalhes avançados:

Selecionar:

```
LabInstanceProfile
```

Executar a instância.

---

# 4 - Criando banco de dados Amazon RDS

Acessar:

```
RDS
→ Criar banco de dados
```

Configuração:

Modo:

```
Configuração completa
```

Banco:

```
MySQL
```

Modelo:

```
Sandbox
```

---

Identificador:

```
tutorial-db-instance
```

Usuário:

```
tutorial_user
```

Senha:

```
Senai134
```

---

Tipo da instância:

```
db.t3.micro
```

O prefixo:

```
db
```

indica que é uma instância de banco de dados.

---

# Armazenamento

Foi mantida a configuração padrão.

O RDS permite crescimento automático do armazenamento.

Exemplo:

Caso o banco ultrapasse o limite configurado, ele pode aumentar automaticamente conforme necessidade.

---

# Conexão com EC2

Selecionar:

```
Conectar-se a um recurso de computação EC2
```

Escolher:

```
tutorial-ec2-instance-web-server
```

---

Grupo de sub-redes:

Selecionar:

```
Grupo de sub-redes privado
```

---

Security Group:

Selecionar:

```
tutorial-db-securitygroup
```

---

Banco inicial:

```
sample
```

Criar banco de dados.

O processo pode levar alguns minutos.

---

# 5 - Configuração do servidor Linux

Acessar a instância EC2 via SSH.

---

Atualizar sistema:

```bash
sudo dnf update -y
```

---

Instalar Apache, PHP e MySQL:

```bash
sudo dnf install -y httpd php php-mysqli mariadb105
```

---

Verificar versão do Amazon Linux:

```bash
cat /etc/system-release
```

---

Iniciar Apache:

```bash
sudo systemctl start httpd
```

---

Adicionar usuário ao grupo Apache:

```bash
sudo usermod -a -G apache ec2-user
```

---

Alterar permissões:

```bash
sudo chown -R ec2-user:apache /var/www
```

```bash
sudo chmod 2775 /var/www
```

---

# 6 - Configurando conexão com RDS

Criar diretório:

```bash
cd /var/www

mkdir inc

cd inc
```

Criar arquivo:

```bash
nano dbinfo.inc
```

---

Dentro do arquivo informar:

```php
<?php

define('DB_SERVER', 'endpoint-do-rds');
define('DB_USERNAME', 'tutorial_user');
define('DB_PASSWORD', 'Senai134');
define('DB_DATABASE', 'sample');

?>
```

O endpoint deve ser copiado diretamente do RDS.

---

# 7 - Criando página de teste

Acessar:

```bash
cd /var/www/html
```

Criar arquivo:

```bash
nano SamplePage.php
```

Adicionar o código PHP responsável pela conexão com o banco.

---

# 8 - Testando aplicação

Após finalizar:

Copiar o IP público da instância EC2.

Exemplo:

```
44.192.122.35
```

Acessar:

```
http://44.192.122.35/SamplePage.php
```

Se a página carregar corretamente, a comunicação entre:

```
EC2
 |
RDS
```

foi realizada com sucesso.

---

# Arquitetura final criada

```
Internet

   |

Internet Gateway

   |

EC2 - Servidor Web
(Pública)

   |

RDS - Banco de Dados
(Privada)
```

---

# Conhecimentos desenvolvidos

Durante este laboratório foram praticados:

- Criação de servidores EC2;
- Configuração de Security Groups;
- Criação de banco RDS;
- Comunicação entre camadas da aplicação;
- Configuração de servidor Linux;
- Instalação de Apache e PHP;
- Integração entre aplicação e banco de dados.

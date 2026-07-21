# Amazon VPC (Virtual Private Cloud)

## 📖 Conceito

O Amazon VPC (Virtual Private Cloud) permite criar uma rede virtual isolada dentro da AWS.

Com uma VPC é possível controlar:

- Endereçamento IP;
- Sub-redes;
- Tabelas de rotas;
- Gateway de internet;
- Regras de segurança.

A VPC funciona de forma semelhante a uma rede corporativa tradicional, porém executada dentro da infraestrutura da AWS.

---

# Laboratório realizado

## Região utilizada

Durante a prática foi utilizada a região:

```
Norte da Virgínia (us-east-1)
```

A região define onde os recursos da AWS serão criados.

---

# Criação da primeira VPC

A criação pode ser feita de duas formas:

## Opção 1 - Somente VPC

Cria apenas a rede virtual.

Os demais recursos precisam ser configurados manualmente:

- Sub-redes;
- Tabelas de rotas;
- Internet Gateway;
- Configurações de segurança.

---

## Opção 2 - VPC com recursos adicionais

A AWS cria uma estrutura inicial automaticamente.

Foi utilizado esse modelo durante a prática para visualizar:

- VPC;
- Sub-redes;
- Rotas;
- Gateway.

---

# Configuração da VPC

Nome utilizado:

```
senai134-east1
```

CIDR IPv4:

```
10.0.0.0/16
```

O bloco /16 foi escolhido para permitir a criação de várias sub-redes futuramente.

---

# Criação das sub-redes

Durante o laboratório foram utilizadas duas zonas de disponibilidade para aumentar a disponibilidade da infraestrutura.

Foram criadas quatro sub-redes:

| Nome | Tipo | CIDR | Zona |
|---|---|---|---|
| senai134-west2-publico | Pública | 10.0.1.0/24 | 2a |
| senai134-west2-privada | Privada | 10.0.2.0/24 | 2a |
| senai134-west2-publico | Pública | 10.0.3.0/24 | 2b |
| senai134-west2-privada | Privada | 10.0.4.0/24 | 2b |

---

## Observação importante sobre zonas de disponibilidade

Quando uma sub-rede pública e uma privada trabalham juntas, é importante manter a mesma zona de disponibilidade.

Exemplo:

```
Privada:
us-west-2a

Pública:
us-west-2a
```

Outra regra importante:

Os blocos CIDR não podem se sobrepor.

Exemplo incorreto:

```
10.0.1.0/24

10.0.1.0/24
```

Exemplo correto:

```
10.0.1.0/24

10.0.2.0/24
```

---

# Configuração das tabelas de rota

As tabelas de rota definem como o tráfego será encaminhado dentro da VPC.

Foi alterado o nome da tabela principal:

```
senai134-west2-rtb
```

---

# Criando tabela de rota privada

Nome:

```
senai134-west2-privada-rtb
```

VPC:

```
senai134-west2
```

Após criação:

- Acessar associações de sub-rede;
- Editar;
- Selecionar as sub-redes privadas.

---

# Criando Internet Gateway

O Internet Gateway permite comunicação entre a VPC e a internet.

Processo realizado:

1. Acessar Internet Gateway;
2. Criar novo gateway.

Nome:

```
senai134-west2-igw
```

3. Associar à VPC criada.

---

# Configurando rota pública

Na tabela de rota pública:

Adicionar rota:

```
Destino:

0.0.0.0/0
```

Destino:

```
Internet Gateway criado anteriormente
```

Depois:

- Acessar associações de sub-rede;
- Associar as duas sub-redes públicas.

---

# Security Groups

Security Groups funcionam como firewall das instâncias EC2.

Eles controlam:

- Portas;
- Protocolos;
- Origem do acesso.

Exemplo utilizado:

```
SSH - Porta 22

HTTP - Porta 80
```

Os Security Groups possuem comportamento:

```
Stateful
```

Ou seja, quando uma conexão é permitida, o retorno também é permitido automaticamente.

---

# Criação de grupo de segurança para servidor Web

Nome:

```
tutorial-securitygroup
```

Regras:

```
SSH
HTTP
```

Origem:

```
Qualquer IPv4
```

---

# Criação de grupo de segurança para banco privado

Nome:

```
tutorial-db-securitygroup
```

Utilizado para controlar acesso ao banco de dados privado.

---

# Grupo de sub-redes do banco de dados

Para utilização com Amazon RDS foi criado um grupo de sub-redes.

Configuração:

Nome:

```
tutorial-db-subnet-group
```

Foram selecionadas as sub-redes privadas criadas anteriormente.

---

# Verificação da arquitetura

Para validar a criação:

Acessar:

```
VPC
→ Mapa de recursos
```

Verificar:

- Sub-redes públicas;
- Sub-redes privadas;
- Internet Gateway;
- Conexões existentes.

---

# Conhecimentos desenvolvidos

Durante este laboratório foram praticados:

- Criação de VPC;
- Planejamento de CIDR;
- Criação de sub-redes;
- Separação entre redes públicas e privadas;
- Configuração de tabelas de rota;
- Internet Gateway;
- Security Groups;
- Preparação de ambiente para EC2 e RDS.

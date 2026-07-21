# Amazon VPC (Virtual Private Cloud)

## 📖 Conceito

O Amazon VPC (Virtual Private Cloud) permite criar uma rede virtual isolada dentro da AWS.

Com uma VPC é possível controlar:

- Endereçamento IP;
- Sub-redes;
- Tabelas de rota;
- Acesso à internet;
- Segurança da rede.

A VPC funciona como uma rede própria dentro da nuvem AWS, semelhante a uma rede corporativa tradicional.

---

# Região utilizada

Durante os laboratórios foi utilizada a região:

```
Norte da Virgínia (us-east-1)
```

A região define onde os recursos serão criados.

---

# Criando uma VPC

Existem duas formas principais:

## 1 - Somente VPC

Cria apenas a rede virtual.

O restante precisa ser configurado manualmente:

- Sub-redes;
- Tabelas de rota;
- Internet Gateway;
- Configurações de segurança.

---

## 2 - VPC com recursos adicionais

A AWS cria uma estrutura inicial automaticamente.

Permite visualizar:

- VPC;
- Sub-redes;
- Rotas;
- Gateways.

Durante a prática foi utilizado esse modelo.

---

# CIDR da VPC

Exemplo:

```
10.0.0.0/16
```

O CIDR define o intervalo de endereços IP disponíveis dentro da rede.

O uso de /16 permite criar diversas sub-redes posteriormente.

---

# Sub-redes

As sub-redes dividem a VPC em redes menores.

Podem ser:

## Pública

Possui acesso através de Internet Gateway.

Exemplo:

```
10.0.1.0/24
```

---

## Privada

Sem acesso direto da internet.

Utilizada para:

- Bancos de dados;
- Aplicações internas;
- Serviços protegidos.

Exemplo:

```
10.0.2.0/24
```

---

# Alta disponibilidade

Durante a criação foram utilizadas duas zonas de disponibilidade.

Exemplo:

```
us-east-1a
us-east-1b
```

A utilização de múltiplas zonas aumenta a resiliência da infraestrutura.

---

# Organização das sub-redes

Exemplo criado:

```
1 - Pública
10.0.1.0/24

2 - Privada
10.0.2.0/24

3 - Pública
10.0.3.0/24

4 - Privada
10.0.4.0/24
```

Regra importante:

Uma sub-rede pública e privada que trabalham juntas devem estar na mesma zona de disponibilidade.

Exemplo:

```
Privada - us-east-1a
Pública - us-east-1a
```

---

# Tabelas de rota

As tabelas de rota definem para onde o tráfego da rede será encaminhado.

Foram criadas:

## Rota pública

Responsável pelo acesso externo através do Internet Gateway.

---

## Rota privada

Utilizada pelas sub-redes privadas para comunicação interna.

---

# Internet Gateway (IGW)

O Internet Gateway permite comunicação entre a VPC e a internet.

Processo:

1. Criar Internet Gateway;
2. Associar à VPC;
3. Adicionar rota para internet:

```
0.0.0.0/0
```

---

# Security Groups

Security Groups funcionam como firewall das instâncias.

Controlam:

- Portas;
- Protocolos;
- Origem do tráfego.

Exemplo:

```
SSH - Porta 22

HTTP - Porta 80
```

São stateful:

Se uma conexão de entrada é permitida, a resposta também será permitida automaticamente.

---

# Boas práticas

- Planejar o CIDR antes da criação;
- Evitar sobreposição de redes;
- Separar recursos públicos e privados;
- Utilizar múltiplas zonas de disponibilidade;
- Aplicar menor privilégio nas regras de segurança.

---

# Conhecimentos desenvolvidos

Durante este estudo foram desenvolvidos conhecimentos sobre:

- Criação de VPC;
- Planejamento de CIDR;
- Sub-redes públicas e privadas;
- Tabelas de rota;
- Internet Gateway;
- Security Groups;
- Arquitetura básica de redes na AWS.

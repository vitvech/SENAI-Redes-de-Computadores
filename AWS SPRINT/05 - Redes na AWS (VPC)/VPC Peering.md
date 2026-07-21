# VPC Peering (Pareamento de VPCs)

## 📖 Conceito

O VPC Peering permite conectar duas VPCs diferentes dentro da AWS, possibilitando comunicação privada entre recursos de redes distintas.

A comunicação acontece utilizando a rede privada da AWS, sem precisar passar pela internet.

Pode ser utilizado para:

- Comunicação entre ambientes;
- Integração entre aplicações;
- Compartilhamento de recursos;
- Arquiteturas distribuídas em diferentes regiões.

---

# Laboratório realizado

Durante a prática foi realizada uma conexão entre VPCs localizadas em regiões diferentes da AWS.

Regiões utilizadas:

```
Norte da Virgínia (us-east-1)

Oregon (us-west-2)
```

---

# Pré-requisito importante: CIDR

Antes de criar o VPC Peering é necessário verificar os blocos CIDR das VPCs.

As redes não podem possuir o mesmo intervalo de IP.

Exemplo de erro:

```
VPC 1:

10.0.0.0/16


VPC 2:

10.0.0.0/16
```

As redes possuem sobreposição de endereços.

---

Exemplo correto:

```
VPC 1:

10.0.0.0/16


VPC 2:

10.1.0.0/16
```

Cada VPC possui seu próprio espaço de endereçamento.

---

# Criando a conexão VPC Peering

Acessar:

```
VPC
→ Conexões de emparelhamento
→ Criar conexão de emparelhamento
```

Configuração utilizada:

Nome:

```
tutorial-vpc-peering
```

VPC solicitante:

```
Sua VPC atual
```

Conta:

```
Minha conta
```

Região:

```
Outra região
```

Selecionar a região onde está localizada a segunda VPC.

---

# Aceitando a conexão

Após criar a solicitação:

1. Acessar a região da VPC destino;
2. Entrar em:

```
Conexões de emparelhamento
```

3. Selecionar a conexão criada;
4. Aceitar solicitação.

Após a aceitação, o status muda para:

```
Ativo
```

---

# Problema encontrado durante a prática

Durante a criação ocorreu falha no emparelhamento.

Ao verificar o status da conexão, foi identificado que o problema estava relacionado ao CIDR.

A VPC criada no Oregon utilizava:

```
10.0.0.0/16
```

Porém esse mesmo range já estava sendo utilizado pela outra VPC.

---

# Solução aplicada

A VPC que não possuía serviços foi removida.

Uma nova VPC foi criada utilizando outro intervalo:

Nome:

```
senai134-west2
```

Novo CIDR:

```
10.1.0.0/16
```

Mantendo:

- 2 zonas de disponibilidade;
- Sub-redes públicas;
- Sub-redes privadas.

---

# Configurando as tabelas de rota

Depois da criação do emparelhamento, foi necessário configurar as rotas.

Criando rota na VPC principal:

Destino:

```
10.1.0.0/16
```

Destino:

```
Conexão de emparelhamento (pcx)
```

---

Na segunda VPC:

Destino:

```
10.0.0.0/16
```

Destino:

```
Conexão de emparelhamento (pcx)
```

---

# Associação das sub-redes

Após adicionar as rotas:

1. Acessar tabela de rotas;
2. Ir em associações de sub-redes;
3. Editar;
4. Selecionar as sub-redes necessárias.

Essa etapa permite que os recursos dentro das sub-redes utilizem o caminho criado pelo VPC Peering.

---

# Validação da conexão

Para verificar:

Acessar:

```
VPC
→ Conexões de emparelhamento
```

Confirmar:

- Status ativo;
- Rotas configuradas;
- CIDRs corretos.

---

# Boas práticas

- Planejar o endereçamento IP antes da criação;
- Evitar CIDRs repetidos;
- Documentar conexões entre redes;
- Configurar rotas corretamente;
- Revisar regras de segurança.

---

# Conhecimentos desenvolvidos

Durante este laboratório foram praticados:

- Criação de VPC Peering;
- Comunicação entre regiões AWS;
- Configuração de tabelas de rota;
- Análise de problemas de rede;
- Planejamento de endereçamento IP;
- Conexão entre ambientes AWS.

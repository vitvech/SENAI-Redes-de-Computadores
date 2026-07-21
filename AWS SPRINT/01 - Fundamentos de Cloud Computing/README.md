# ☁️ Fundamentos de Cloud Computing

Documentação dos meus estudos sobre os conceitos fundamentais de Cloud Computing durante o curso Técnico em Redes de Computadores no SENAI.

Neste módulo foram estudados a evolução da computação em nuvem, suas principais características, modelos de utilização e os conceitos iniciais utilizados em ambientes Cloud.

---

# 🎯 Objetivo

Compreender os fundamentos da computação em nuvem, entendendo como a tecnologia evoluiu, suas principais características definidas pelo NIST e as diferenças entre modelos tradicionais de infraestrutura e ambientes Cloud.

---

# 🕒 Evolução da Computação em Nuvem

## 1961 — John McCarthy

John McCarthy apresentou a ideia de que a computação poderia ser disponibilizada como um serviço público, semelhante ao modelo utilizado pelas redes telefônicas.

Essa ideia ajudou a formar o conceito de oferecer recursos computacionais como um serviço.

---

## 1969 — Leonard Kleinrock

Leonard Kleinrock previu a popularização de "utilitários de computador", onde recursos computacionais poderiam ser acessados através de redes cada vez mais avançadas.

---

## Anos 90 — Expansão da Internet

Com a evolução da internet, serviços como e-mails, motores de busca e aplicações online mostraram que o processamento e armazenamento poderiam acontecer remotamente, sem depender exclusivamente do computador local.

---

## 1999 — Software as a Service (SaaS)

O conceito de Software como Serviço ganhou força, permitindo que empresas utilizassem aplicações remotamente através da internet.

---

## 2006 — Amazon Web Services (AWS)

A Amazon iniciou sua plataforma de Cloud Computing oferecendo serviços como:

- Amazon EC2 (Elastic Compute Cloud): servidores virtuais sob demanda.
- Amazon S3 (Simple Storage Service): armazenamento de objetos.
- Amazon SQS (Simple Queue Service): gerenciamento de filas para aplicações.

---

# ☁️ Características da Cloud Computing (NIST)

O NIST (National Institute of Standards and Technology) define características essenciais da computação em nuvem.

---

## 1. Uso sob demanda (On-Demand Self-Service)

O consumidor consegue criar e gerenciar recursos computacionais automaticamente, sem depender da intervenção manual do provedor.

Exemplo:

Criar uma instância EC2 através do console AWS.

---

## 2. Acesso amplo pela rede (Broad Network Access)

Os serviços Cloud devem estar disponíveis através da rede e acessíveis por diferentes dispositivos:

- Computadores;
- Notebooks;
- Smartphones;
- Workstations.

---

## 3. Pool de recursos e Multilocação (Resource Pooling)

Os provedores Cloud compartilham recursos físicos entre diversos clientes, mantendo isolamento lógico entre ambientes.

Esse modelo permite:

- Melhor utilização da infraestrutura;
- Redução de custos;
- Escalabilidade.

---

## 4. Elasticidade (Rapid Elasticity)

Capacidade de aumentar ou reduzir recursos conforme a demanda.

Exemplo:

Aplicativos como iFood podem aumentar recursos em horários de maior acesso e reduzir quando a demanda diminui.

---

## 5. Serviço medido (Measured Service)

O consumo dos recursos é monitorado e utilizado para cobrança.

Modelo:

Pay-as-you-go

O cliente paga apenas pelo que utiliza.

---

## 6. Resiliência (Resiliency)

Uso de redundância e mecanismos de recuperação para garantir disponibilidade dos serviços.

Exemplo:

Caso um datacenter apresente falha, outro ambiente pode assumir a operação.

---

# 🏗️ Primeiros serviços AWS estudados

Durante a introdução à AWS foram apresentados serviços como:

- Amazon CloudFront;
- Amazon S3;
- Amazon API Gateway;
- AWS Lambda;
- Amazon DynamoDB;
- Amazon Aurora;
- Amazon SNS;
- Amazon SES.

---

# 🖥️ Mudança dos modelos computacionais

Antes da popularização da Cloud Computing, muitas empresas utilizavam ambientes tradicionais baseados em servidores próprios e mainframes.

Mainframes eram sistemas de grande porte utilizados para processamento de grandes volumes de dados, com linguagens como COBOL sendo muito utilizadas nesses ambientes.

Com a Cloud Computing, responsabilidades como manutenção da infraestrutura, gerenciamento físico dos servidores e parte da administração das licenças passam a ser responsabilidade do provedor Cloud, como a AWS.

---

# 💰 Modelos de investimento

## CapEx (Capital Expenditure)

Modelo tradicional de infraestrutura própria.

Exemplos:

- Compra de servidores;
- Equipamentos de rede;
- Licenças;
- Energia;
- Espaço físico;
- Treinamentos.

---

## OpEx (Operational Expenditure)

Modelo utilizado em Cloud Computing.

Características:

- Pagamento conforme utilização;
- Menor investimento inicial;
- Maior flexibilidade.

---

# 🔄 Mudança de paradigma

A computação em nuvem mudou o modelo tradicional de infraestrutura.

Antes:

Empresa

- Servidores próprios
- Datacenter
- Energia
- Manutenção
- Equipe de infraestrutura

Depois:

Provedor Cloud

AWS / Azure / Google Cloud

Recursos sob demanda

Pagamento por uso

---

# 💡 Conhecimentos desenvolvidos

Durante esse estudo desenvolvi conhecimentos sobre:

- Conceitos fundamentais de Cloud Computing;
- História e evolução da computação em nuvem;
- Características definidas pelo NIST;
- Modelo Pay-as-you-go;
- Diferença entre CapEx e OpEx;
- Conceitos iniciais da arquitetura AWS.

---

# 📚 Próximos estudos

Próximos tópicos aprofundados neste repositório:

- Serviços computacionais AWS;
- Redes na AWS (VPC);
- Armazenamento;
- Monitoramento;
- Infraestrutura como Código (Terraform);
- Containers.

 # Bucket Name - Amazon S3

## 📖 Conceito

No Amazon S3, um **Bucket** funciona como um contêiner onde os objetos (arquivos) são armazenados.

O termo `Bucket-Name` é utilizado como um **espaço reservado** para representar o nome do bucket dentro de configurações e políticas de acesso.

Quando uma política é criada, o valor `Bucket-Name` deve ser substituído pelo nome real do bucket criado na conta AWS.

---

# Exemplo de substituição

Antes:

```json
"Resource": "arn:aws:s3:::Bucket-Name/*"
```

Depois:

```json
"Resource": "arn:aws:s3:::meu-bucket-aws/*"
```

O nome informado precisa ser exatamente igual ao nome do bucket existente.

Caso o nome esteja incorreto, a política não será aplicada ao recurso esperado.

---

# Estrutura de uma política de Bucket

As políticas do Amazon S3 utilizam JSON para definir permissões.

Uma política normalmente possui:

* **Effect** → Define se a ação será permitida ou negada;
* **Principal** → Define quem pode acessar;
* **Action** → Define quais ações podem ser realizadas;
* **Resource** → Define qual recurso será afetado.

Exemplo:

```json
{
  "Effect": "Allow",
  "Principal": "*",
  "Action": "s3:GetObject",
  "Resource": "arn:aws:s3:::meu-bucket-aws/*"
}
```

---

# Utilização do Bucket Name

O nome do bucket é utilizado para identificar o recurso dentro da AWS.

Ele pode aparecer em:

* Bucket Policies;
* Configurações de acesso;
* Scripts de automação;
* Aplicações que utilizam o S3;
* Integrações com outros serviços AWS.

---

# Regras para nomes de Buckets

Os nomes dos buckets possuem algumas regras:

* Devem ser únicos globalmente;
* Não podem existir dois buckets com o mesmo nome;
* Devem seguir o padrão de nomenclatura da AWS;
* São utilizados em endereços URL do S3.

Exemplo:

```
meu-bucket-estudos-aws
```

---

# Segurança e permissões

O controle de acesso no Amazon S3 pode ser realizado através de:

## IAM

Permissões associadas a usuários, grupos ou funções.

Exemplo:

Uma aplicação pode receber permissão para enviar arquivos para um bucket.

---

## Bucket Policy

Política aplicada diretamente ao bucket.

Permite controlar acessos específicos ao armazenamento.

---

## ACL

Lista de controle de acesso que define permissões diretamente em buckets e objetos.

Atualmente, a AWS recomenda utilizar principalmente IAM e Bucket Policies.

---

# Boas práticas

* Utilizar nomes organizados e padronizados;
* Evitar permissões públicas sem necessidade;
* Aplicar o princípio do menor privilégio;
* Revisar políticas antes de liberar acesso;
* Utilizar criptografia quando necessário.

---

# Observação

Este arquivo foi criado como material complementar de estudo sobre Amazon S3.

A aula original deste conteúdo não foi acompanhada, então este documento serve como apoio para revisar os conceitos relacionados a nomes de buckets e políticas de acesso.


    

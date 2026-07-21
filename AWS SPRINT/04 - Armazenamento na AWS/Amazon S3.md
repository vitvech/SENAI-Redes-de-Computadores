# Amazon S3 (Simple Storage Service)

## 📖 Conceito

O Amazon S3 (Simple Storage Service) é um serviço de armazenamento de objetos da AWS, desenvolvido para oferecer alta escalabilidade, disponibilidade e segurança.

Ele permite armazenar e recuperar grandes volumes de dados, como:

* Fotos;
* Vídeos;
* Backups;
* Arquivos;
* Dados para aplicações.

Os dados são organizados em estruturas chamadas **Buckets**.

O Amazon S3 é muito utilizado para:

* Hospedagem de sites estáticos;
* Data Lakes;
* Armazenamento de arquivos;
* Backup e recuperação de dados.

---

# Tipos de armazenamento AWS

A AWS possui diferentes modelos de armazenamento:

## Armazenamento de objetos

Exemplo:

* Amazon S3

Utilizado para armazenar arquivos e objetos.

## Armazenamento de blocos

Exemplo:

* Amazon EBS

Utilizado como discos para máquinas virtuais.

## Armazenamento de arquivos

Exemplo:

* Amazon EFS

Sistema de arquivos compartilhado.

---

# Características do Amazon S3

* Cada objeto possui um identificador único;
* Os dados são armazenados em regiões AWS;
* Utiliza zonas de disponibilidade para garantir disponibilidade;
* Possui diferentes classes de armazenamento conforme necessidade e custo.

---

# Criação de Bucket

Processo realizado:

1. Criar Bucket;
2. Selecionar propósito geral;
3. Definir nome único dentro do namespace global da AWS;
4. Escolher a região;
5. Criar o bucket.

Exemplo de nome:

```
vitor.vechiezsenai134-2
```

---

# Hospedagem de site estático

Para hospedar um site:

1. Fazer upload dos arquivos;
2. Enviar os arquivos para o bucket;
3. Acessar as propriedades do bucket;
4. Ativar hospedagem de site estático;
5. Definir o arquivo inicial:

```
index.html
```

---

# Liberando acesso público

Existem duas formas principais:

## Via política JSON

Utilizando uma política de bucket para permitir acesso público.

## Via ACL

Configuração manual:

1. Acessar permissões do bucket;
2. Desativar bloqueio de acesso público;
3. Habilitar ACLs;
4. Configurar acesso público de leitura.

Observação:

A liberação via ACL precisa ser feita individualmente nos objetos.

---

# Amazon EBS e integração com EC2

Durante os laboratórios foram praticados conceitos de volumes e snapshots utilizando EC2.

## Criando volume EBS

Passos:

1. Criar volume;
2. Verificar a Zona de Disponibilidade;
3. Utilizar a mesma zona da instância EC2;
4. Associar o volume à instância.

Sempre verificar:

```
Zona de disponibilidade da instância
=
Zona de disponibilidade do volume
```

---

# Windows Server + EBS

Após associar o volume:

1. Acessar via RDP;
2. Abrir:

```
Create and format hard disk partitions
```

3. Criar novo volume;
4. Formatar o disco.

---

# Snapshots

Snapshot é uma cópia de segurança de um volume.

Exemplo:

```
Descrição:
bkp-windows-server
```

Processo:

1. Criar snapshot;
2. Aguardar conclusão;
3. Copiar snapshot;
4. Ativar criptografia;
5. Criar novo volume criptografado.

---

# Linux + EBS

Após associar o volume:

Verificar discos disponíveis:

```bash
lsblk
```

Verificar sistema de arquivos:

```bash
sudo file -s /dev/xvdf
```

Formatar utilizando XFS:

```bash
sudo mkfs -t xfs /dev/xvdf
```

⚠️ Atenção:

A formatação remove os dados existentes no disco.

Criar diretório:

```bash
sudo mkdir -p /dados
```

---

# Sistemas de arquivos

## NTFS

Utilizado principalmente pelo Windows.

## EXT2

Sistema de arquivos Linux.

---

# Conceitos importantes aprendidos

* Armazenamento de objetos;
* Criação de buckets;
* Controle de acesso público;
* Hospedagem de sites estáticos;
* Volumes EBS;
* Snapshots;
* Criptografia;
* Associação entre volumes e instâncias EC2;
* Sistemas de arquivos Linux e Windows.

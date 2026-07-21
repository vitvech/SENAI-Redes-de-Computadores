prof: TADAU

        CUSTOS E MODELOS DE PAGAMENTOS

            Estouro de Custos (Cost Overruns)

                Elasticidade é uma face de dois gumes


                CapEx  -> Despesas de capital iniciais

                OpEx   -> custos operacionais variáveis



            Alocação de curto prazo ->  Pay-as-you-go(Paga pelo tanto que vai usar e pelo tempo que for usar) e Instâncias sob demanda                                                (Flexibilidade total)
                Ex: Não sei quanto vai utilizar de recursos, muitos picos. Quase nada é previsto
                        Geralmente para fazer testes.

            Alocação de longo prazo ->  Instâncias Reservadas e Savings Plans (Maxima Economia)
                Ex: Eu sei o quanto a infra vai utilizar de recursos, poucos picos. Tudo é previsto


              Nuri ->     Paga td no começo 
              Puri ->     Paga td parcial
              Auri ->     Paga td no final


            Savings Plans:
            Instancias Reservadas:


    MÉTRICAS DE INFRAESTRUTURA (IaaS/Paas)
---------
     Uso de Rede e Tráfego -> Cobrado por volume de saida(GB) e tráfego entre regioes, enquanto a entrada costuma ser gratuita 
                

     Pay-Per-Use   >    Servidores e Instâncias ->  Medir o tempo de ativade (uptime) e pela capacidade de hardware,como CPUs e RAM.~
    

     Armazenamento (Cloud Storage) ->    Calculado pelo espaço alocado por periodo(GB/mês) e pelo volume de dados transferidos (E/S)


    MÉTRICAS DE SOFTWARE E SERVIÇOS (Saas)
---------
     Volume de transações -> Cobrança baseada ba qyabtudade de operações ou mensagens processadas pela api

     Assinaturas e Users -> Custos baseados na duração do contrato ou no número de users nomeados com acessos ao serviço





    MÉTRICAS DE CUSTO DE USO

        Uso de Rede: Trafego de said e trafego intra-nuvem
        Uso de Servidor: uptime da instancia e capacidade
        Armazenamento: espaço alocado por periodo
        Serviço Saas:

    MODELOS DE PREÇO (Pricing Models)

        Taxas Fixas vs. Variáveis

        Taxas fixas -> Cotas alocadas
        Variáveis -> Alinhadas ao Use real
        
        IaaS -> Infraestrutura (Modelo "Cru") - Oferece recursos brutos como hardware e redes, garantindo controle adm total ao consumidor
        PaaS -> Plataforma (Pronto para uso) - Consumidor é isolado dos detalhes da implementação e do sistema operacional
        SaaS -> Software (Produto final) - Provedor segura tudo: Gerencia tudo,do hardware à aplicação


    Descontos por volume ->
    Customização por entrega  ->


        CUSTOS ADICIONAIS



                Custos de Integração
                Custos de Bloqueio(Locked-in Costs)
                Custos de Capital e Afundados (Sunk Costs)
                Custo de capital na decisão
                -
                -

        
        MECANISMOS DE GERENCIAMENTO


            pay-per-use monitor -> Coleta dados de execução e logs de evenos para rastrear o uso do consumo
            Variaveis de monitoramento essenciais -> Rastria quantidade de mensagens, volume de dados transmitidos e consumo de largura de banda
            Registro de eventos (logs) -> Captura eventos 
             Billing Management System  ->  Esses sistemas automatizam todo o ciclo de faturamento, desde a emissão da nota fiscal e boleto até a identificação do pagamento (baixa automática) e régua de cobrança.

         ----CALCULADORA AWS---
-----------------------------------
https://calculator.aws/#/addService
-----------------------------------
   Empresas utilizam Cloud Watch -> Parte inicial para pegar as metricas

            (MAIS BARATO)






        Modelos de nuvem

-
-
-



        IaaS -> Infraestrutura (Modelo "Cru") - Oferece recursos brutos como hardware e redes, garantindo controle adm total ao consumidor
        PaaS -> Plataforma (Pronto para uso) - Consumidor é isolado dos detalhes da implementação e do sistema operacional
        SaaS -> Software (Produto final) - Provedor segura tudo: Gerencia tudo,do hardware à aplicação                        






        O QUE É A AWS:




                        2006
                        190 PAISES
                        2003 -> visao para infra unificada
                        2004 -> lançamento serviço de filas simples (publico)
                        março de 2006 -> Amazon S3, e EC2
                        2009 -> Amazon VPC e Elastic Load Balancing
                        2011 -> Redes Isoladas e Escala Global
                        2012 -> Bancos de dados complexos
                        2014 -> A revolução do AWS lambda
                        2017 -> Expansao a IA
                        2020 -> - 

        
        Infra global plataforma de nuvem altamente confiavel,escalavel e de baixo custo

                            123 zonas de disponibilidade, 39 regioes geograficas
                            2 regioes aws no reino da arabia saudita e no chile
                            mais de 750 POPs do CloudFront, 13 caches de borda regional
                            30 local zones e zonas AWS Wavelenght

        BLOCOS DE CONSTRUÇÃO NA NUVEM

                            
                       - Troca de custos fixos por variáveis
                       - Mais de 200 serviços globais
                       - Agilidade total em minutos
                       - Gestão simples e multicanal
                    



        Espinha Dorsal da nuvem:


                        AWS groud Station
                                Estação terreste gerenciada para conrolar satelites e processasr dados espaciais na nuvem

                        Perimetro de rede logico
                                Fronteiras para isolar a capacidade da rede alocada a consumidores individuais

                        AWS Wavelenght e Outposts
                                Infra otimizada para dispositivos móveis, baixa latencia via 5g

                                estende a infra AWS para qualquer datacenter ou instação via on-premise

                        EDdge Locations 



                        -
                        -
                        --
                        -
                        -
                        -
                        -




        
        Infraestrutura AWS


  Sempre nessa sequencia ->                       AWS - Region - AZ (Zonas de disponibilidade)
                                                                     1 ou mais datacenters
                        
        
            POP(Points of presensce)
                    ->

            AWS global accelerator
                    ->
            AWS Wavelenght
                    ->
            AWS Local zone
                    ->

    
    AWS WELL-ARCHITECTED FRAMEWORK


                well-architected tool para identificar riscos e melhorar continuamente sua Infraestrutura

                6 PILARES DA AWS ->  Excelencia operacional
                                     Segurança
                                     Confiabilidade
                                     Eficiencia de performance
                                     Otimização de custos
                                     Sustentabilidade

    BIBLIA DA BOA INFRAESTRUTURA


                Excelencia operacional via IaC -> Automatizzar tudo com scripts
                Segurança e privilegio minimo -> Proteger dados em repouso ou transito, garantindo apenas o necessario
                Confiabilidade auto-regenarativa -> Proteje sistema que assumm cargas automaticamente se uma zona falhar, sem o usuario perceber
                Eficiencia,custo e Sustentabilidade ->Não use recusrsos excessisvos para tarefas simples
                Otimização de custos reais -> deve ser economia de escala, não de desperdicio
                Sustentabilidade Ambiental -> Minimize o impacto ambiental reduzindo a CPU ociosa e o gasto desnecessario de energia.

    
            

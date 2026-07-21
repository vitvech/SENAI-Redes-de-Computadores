Analise e Documentação

            Boas práticas






            1 Excelencia -> Voce consegue detectar e responder a falhas antes que o usuario perceba? monitoramento 
            2 Segurança -> Se alguem invadir, o que conseguirá acessar ? bkup, failover(se um cai,outro assume)
            3 Confiabilidade -> Seu sistema sobrevive à falha de um componente sem downtime?   loudbalacing,multi az 
                                                            replica ativa -> se o banco cai, ja assume
                                                            anti leitura -> atualização assicrona, precisa subir manualmente

            4 Eficiencia -> Voce esta usando o recurso certo para cada tarefa? 
            5 Otimização -> Voce paga apenas o que realmente usa? 
            6 Sustentabilidade -> Seu sistema desperdiça energia com recursos ociosos?


Por que ele existe?
 
 SEM ELE->
        Sempre que eu faço uma arquitetura sem o framework, na base da intuição. VAI DAR RUIM
            Sem Documentação correta
            Sem controle do que esta sendo feito,alterado,instalado e removido
            garante emogienuidade
            Bugs de segurança 
            Custo so na fatura
            TRABALHANDO DE MODO REATIVO

 COM ELE->   
                WAF -> Pode ser    Well-architected Framework, as vezes confundido com Web Application Firewall


        Linguagem mais comum, times falando a mesma língua
                    Ex:
                         Departamento de Ti de um banco

                                Dev
                                Infra
                                Segurity
                                Compli
                                Backup
                                Observalidade
                                Diversos outros times

                        Esse time de ti, não é para todo banco
                        para cada Departamento de um banco, vai ter algum desses
                        times similares

                            Marketing tem necessidades diferentes
                        
                        Analise de sentimento
                        Se eu tenho 15 times que fazem e nao fazem a mesma coisa 
                        se eu n tenho um framework que liga eles
                        plataformas de cloud distintas, porem com o framework faz com que todos usem a mesma lingua para tomar providencias futuras

        Identificação de riscos
        Benchmarks objetivos
        Alinhamento com boas praticas comprovadas da industria

                        empresas que trabalham com certificaçoes

                                boas praticas comprovadas
                                eu consigo manter isso de modo mais factivel
                                valor agregado da empresa e da marca
                        

    
        
Quando usar?



    Antes de lançar um sistema em produção -> Teorica e coloco o framework nessa teoria. Sistema nasce adequado
    Ao revisar uma arquitetura existente -> Verificar se atende ao WAF
    Quando algo falha e voce precisa entender o porquê -> Atraves dos diagnosticos, consegue entender o porque ocorreu, se possivel resolve-la e provisionar falha
    Para priorizar melhorias com budget limitado ->
    Como criterio de avaliação tecnica em entrevistas e provas -> 

     finops -> Mercado altooo






WAF -> filtra trafego malicioso antes de chegar ao ALB
ALB -> distribui requisicoes entre as instancias do mesmo tipo
Subnets privadas -> instancias sem IP publico; acesso apenas via ALB ou SSM
NAT GW (nao exibido) -> permite que subnets privadas acessem a internet(npm,apt)



    https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html 

    documentação da aws 
    c
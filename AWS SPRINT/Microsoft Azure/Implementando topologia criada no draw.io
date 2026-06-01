
        Entrar no portal do azure

            Procurar por Rede virtual

                        Criar 
                        Nome: Principal

                        Espaço de endereco:

                                    Coloque a rede Principal
                                    172.16.0.0          /16
                                    Com base na topologia criada
            

                        Na Subrede

                                Editar, Colocar Azure Bastion, no nome AzureBastionSubrede
                                        Intervalo: 172.16.1.0    /24
                                        Tirar subrede privada
                                        Salvar
                        
                        Adicionar Subrede

                                Deixar default, nome: subredeprivada
                                                Intervalo: 172.16.2.0    /24
                                                deixar subede privada
                                                Salvar
                            


                        Criar Grupo de Segurança para configurar depois

                        Criar Vm
                                
                                nome: VM-PRINCIPAL
                                região: East US 2
                                Sem redundância
                                Windows Database Standard

                                    usuario: vitor
                                    senha: Senai@134@134
                                    Porta de entradas publicas, nenhum(pois vamos configurar na mão ou deixar RDP)


                        Disco:
                                        tipo de disco: SSD standard
                        

                        Rede:

                                        Rede virtual: PRINCIPAL
                                        IP público: Nenhum  
                                        Grupo de segurança de rede do adaptador de rede: Avançado


                                        Criar





                        Pesquisar por bastion:


                                        grupo de recursos: appservices
                                        nome: PRINCIPAL-BASTION
                                        região: zona 1
                                        camada: standard
                                        rede virtual: Principal
                                        sub-rede: AzureBastionSubnet
                                        endereço publico: criar novo 
                                        nome do endereço public: PRINCIPAL-IP


                                        Salvar
                                                        OBS: a implantação do bastion demora uns minutos, quando for conectar na instancia e aparecer updating, tem que esperar mais um pouco
                                                    
                                            

                                    
                        Testar:

                                    ir na maquina virtual
                                    conectar por meio do bastion
                                    Colocar usuario e senha da vm

                                        Caso, apareça pop up bloqueado. Clicar do lado do endereço do navegador e desbloquear

                                    E pronto, abrir em outra guia
                                    Conectado, so utilizar!!

                                        vou subir a topologia no onedrive

                                            vai se chamar "1topologiacloud"




                                        
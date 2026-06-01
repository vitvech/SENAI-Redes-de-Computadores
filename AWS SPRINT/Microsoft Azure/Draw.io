
     Abrir o draw.io no navegador



                    Zona de disponibilidade, pegar a azul
                    Preencher com alguma cor(ficar mais facil)

                    Pegar sinal do usuario, Nomear como usuario
                        ir em formatos, e pegar a nuvem
                    

                Usuario para nuvem(internet), para azure portal. Azure portal seta para zona de disponibilidade
                        
                    Pesquisar por virtual network, pegar algo como: <...>

                                Colocar em cima da zona de disponibilidade
                                        Colocar do lado a rede
                                                ex: 
                                                        172.16.0.0/16

                                                Ficaria algo como:

                                                        <...> Virtual Network: 172.16.0.0/16



                    Pegar outro sinal de rede e outra zona de disponibilidade

                    colocar a zona dentro da primeira zona, emcima dela colocar o sinal de rede e colocar o texto com "Azure bastion host"

                            Pesquisar azure bastion, ><.        Colocar ele no meio da 2 zona

                    bastion serve para conectar nas instancias privadas
                    para o bastion funcionar, a gente precisa acessar ele de forma publica
                    então vamos pegar um public ip
                                precisa de um ip public, se fosse utilizar uma maquina tambem precisaria de um ip public. Elas atuando como bastion host precisa de um public ip


                    
                    


            Copiar zona 2 jogar do lado, copiar sinal de rede colocar emcima e colocar em texto do lado do sinal de rede "Subnet privada"


                        
                        virtual machine, colocar dentro da copia da zona 2




                "Permitir RDP" é criado o Network Security Group(NSG). Nivel de rede
                        Permissoes na hora da criação


                    Coloque-o na subnet privada


                    Account Storage e Fileshare (Coloque-os do lado do NSG, e conecte eles as maquinas virtuais)
                    
                            
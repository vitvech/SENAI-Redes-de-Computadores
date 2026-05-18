#TTY = Tele Tpe Write
whoami # Retorna o nome de usuario atual
who # mostra todos os usuarios conectados atualmnente
ls # lista os diretorios
man ls # exibe o manual do comando
tecla tab #autocompleta um comando digitado parcialmente
history (ou setas para cima ou baixo) # exibir o historico de comandos utilizados
pwd # mostra o caminho completo do diretório atual(Print Working Directory)
ls # lista arquivos e diretórios
ls -l # vai listas os diretórios com detalhes
ls -a # mostra também os arquivos ocultos 
ls -lh # mostra os tamanhos dos arquivos em um formato mais legíveis
ls -lhS # lista os arquivos ordenados por tamanho
ls -lt # Lista os arquivos ordenados pela data de modificação
ls -lr # lista os arquivos ordenados de forma reversa
ls -lF # adicionar um caracter especial no final dos nomes
              #  / -> Diretório
              #  * -> Arquivo execútavel
              #  @ -> links simbólicos
              #  | -> Pipes são arquivos especiais
#read -> leitura
#write -> Gravar
#Execute -> Executar
#Se tiver um traço (-) -> Um arquivo
               # D -> Um diretório 
ls -| less # Permite paginar a saida do ls quando ouver muitos arquivos
passwd # usando com o sudo, não necessario senha ->(alterar senha do usuario)
su (sudo) # ativar modo usuario supremo
sudo dpkg -reconfigure console setup #mudar o tamanho da fonte 

------------------------------------ssh-----------------------------

apt update && apt install openssh-server -y # atualiza e instala openssh
sudo systemctl status ssh # verica o status do ssh
sudo systemctl start ssh # iniciar o ssh
sudo systemctl enable ssh # habilitar o ssh
ip a # ver o ip

#liberar o ssh no Firewall

sudo ufw allow ssh # regra para liberar o serviço de ssh no firewall

#instalar o ufw

sudo apt install ufw -y # instalando o ufw
sudo ufw enable # habilitando o ufw
sudo ufw allow ssh # regra para liberar o serviço de ssh no firewall~

#Verificar se a regra foi aplicada

sudo ufw status (22/tcp allow)

#para acessar viar prompt no windows(CMD)
ssh [nome=do-usuario]@[ip-da-maquina]
      ssh vitorv@172.16.0.193
#ip vmware debian - 172.16.0.193

cd #serve para mudar de diretorio 
   cd . # permanece no diretorio atual
   cd .. # retorna ao diretorio anterior
   cd / #retorna ao diretorio raiz
   cd - # volta para o ultimo diretorio acessado
   cd ~ # retorna para home de usuario
   cd # tambem retorna para o home de usuario

mkdir # (Make Directory) Cria diretorios
    mkdir -p 5-semestre/RM/Linux #cria a estrutura de diretorios
    mkdir -v 5-semestre/RM/Linux/Prova # O paramâmetro -v (verbose) mostra os deretórios 
    rmdir #remove diretorios vazios 
    rmdir [nome-do-deretório] # remove diretorio
    rmdir [nome-do-1-deretório] [nome-do-2-deretório] # remove varios diretorios de uma vez, mas vazios
    rm -r [nome-do-arquivo-ou-pasta] # remove diretorios e seus conteúdos (r de recursivo)
    rm # Remove arquivos vazio
       rm[arquivo]
 
su #(Substitute user) Troca de usúario no terminal
      su - # troca para o root e carrega o ambiente completo
      su [nome_de_usuario] # troca para outro usuario
      su - [nome_de_usuario] #troca para outro usuario e carrega o ambiente completo

apt # (Advanced Pack) Gerenciador de pacotes do debian]
    apt install [nome-do-programa] # instala um programa
    apt remove [nome-do-programa] #remove um programa, mas mantem os arquivos de config
    apt purge [nome-do-programa] # remove um programa e seus arquivos de configuração
    apt search [nome-do-programa]  # procura um programa nos repositorios
    apt show [nome-do-programa] # exibe detalhes sobre um pacote
    apt update # Atualiza a lista de pacotes disponiveis nos repositorios
    apt upgrade # vai instalar as atualizações disponiveis para os pacotes 
    apt update && apt upgrade -y                                      # (-y -> Da Yes para tudo)

    #instalando o tree
     su - 
     senha senai@134
     apt install tree #instalando o programa tree
     tree --version # verifica a versão instalada do tree

     #Criando arquivos

     touch #cria arquivos vaizos
        touch [nome-do-arquivo] #cria um arquivo vazio
        touch [nome-do-1-arquivo][nome-do-1-arquivo] # cria varios arquivos de uma so vez
        mv # move ou renomeia arquivos e diretórios
            mv[arquivo-ou-pasta-de-origem] [arquivo-ou-pasta-de-DESTINO] # Move arquivos ou pasta
            mv[nome-arquivo-ou-pasta][NOME-NOVO-arquivo-ou-diretório] # Renomeia um arquivo ou pasta
      cp # Copia arquivos e diretórios
      cp[arquivo-ou-pasta-de-origem] [arquivo-ou-pasta-de-DESTINO] #copiar se tiver vazio
      cp -r [arquivo-ou-pasta-de-origem] [arquivo-ou-pasta-de-DESTINO] #copiar arquivos e diretório recursivamente(todo seu conteudo)
echo # exibe texto na tela ou escreve texto em um arquivo 
      echo "Bem-Vindo ao Linux" # exibe o texto na tela 
      echo "Bem-Vindo ao Linux" > documento.txt # Insere o texto em um arquivo e sobrescreve
      echo "Pachelino" >> Documento.txt # adicionar o texto no final do arquivo
      echo ";) " > imagem.png


cat # Concatenar arquivo e exibe seu conteudo
    cat [arquivo] # exibe o conteudo de um arquivo.
    cat[arquivo1][arquivo2] # junta e exibe o conteudo de multiplos arquivos
    cat documentos.txt imagem.txt

file # exibe informaçoes sobre o tipo de um arquivo
     file Documento.txt # mostra o tipo de arquivo "Documento.txt"
     file imagem.png # Verifica se o arquivo "imagem.png" é realmente uma imagem válida

help # Mostra ajuda sobre comandos internos do shell
     help cd # exbibe as informalçoes sobre o comando interno cd
     help umask # exibe informaçoes sobre o comando 

whatis # Exibe uma descricao curta sobre um comando
     whatis # mostra uma breve descrição sobre o comando "ls"
     whatis chmod # mostra uma breve descricao sobre um comando "chmod"


head # Exibe as primeiras 10 linhas de um arquivo
     head -5 # Exibe as primeiras 5 linhas do arquivo


                          #Atividade
                     # touch animais.txt
                     # nano animais.txt
                [1-Anta, 2-Bicho-preguiça, 3-canguru, 4-Dração-de-komodo, 
                 5- Elefante, 6-Falcão, 7-Galo, 8-Hipopótamo, 9-Iguana,
                 10- jabuti, 11-Koala, 12- Lobo. 13-Macaco, 14-Naja, 15-Onça,
                 16-Pinguim, 17- Quati, 18-Raposa, 19- Tamanduá, 20- Urso]

            ^ -> Ctrl + ?

tail # Exibe as ultimas 10 linhas de um arquivo
      tail animais.txt # exibe as ultimas 10 linhas de um arquivo
      tail -4 animais.txt # Exibe as ultimas 4 linhas de um arquivo 

find # Procura por arquivos dentro de diretórios 
      find /home -name animais.txt # Busca o arquivo "animais.txt" dentro do diretório /home/aluno
      find /var/log -name "*.log*" # Procura por arquivos com extensão .log dentro de /var/log.

grep # Busca uma palavra ou expressao dentro de um arquivo
        grep -i ["palavra"][arquivo] # Procurar a palavra dentro de um arquivo
        grep -i "erro" logs.txt # Procurar pela palavra "erro" dentro do arquivo
        grep -i "usuario" usuarios.txt
        grep -i  senha.txt

        #INFO LAB
             # Criando Usuarios/Senhas/Logs Fic

cat <<EOF > Usuarios.txt
ID:1101 | Nome: Vitor   | Usuario: Vitor   | Grupo: Admins  | 
ID:1002 | Nome: Neemias | Usuario: Neemias | Grupo: Users   |
ID:1003 | Nome: Giullia | Usuario: Giullia | Grupo: Users   |
EOF



cat <<EOF > senha.txt
Usuario: Vitor | Grupo: Admins | Senha: SenhaForte123
Usuario: Neemias | Grupo: Users | Senha: SenhaFraca123
Usuario: Giullia | Grupo: Users | Senha: Giulli@789
EOF


cat <<EOF > logs.txt
[INFO] Usuario Rodrigo acessou o sistesma.
[WARNING] Tentativa de login para usuario desconhecido
[ERRO] Usuario Giullia digitou senha errada 3 vezes
[INFO] Usuario Neemias alterou a senha com sucesso
EOF
# Desligar o Sistema
  sudo poweroff # Desliga o SO
  sudo init 0 # Desliga o SO
  sudo shutdown now # Desliga o SO agora
  sudo shutdown -h now # Desliga o computador imediatamente
  sudo shutdown -h +10 # Agenda o desligamento (em *10 minutos*)
  sudo shutdown -c # Para cancelar um desligamento agendado

  #Reiniciar o Sistema

sudo shutdowm -r now # reinciar imediatamente
sudo reboot # reinciar arguardando o termino dos processos
sudo systemctl reboot # reinicia.
                        #Testando o MINI LAB
                                ls -l #Para listar e ver se foi criado os arquivos usuario.txt, senha.txt e logs.txt
                                cat logs.txt senha.txt usuario.txt #Verifica o que tem dentro de cada arquivo de forma concatenads (um abaixo do outro)
                                grep -i "erro" logs.txt #Procura pela palavra erro (não importa se é maiusculo ou minusculo) no arquivo logs.txt
                                grep -i "usuario" usuario.txt #Procura pela palavra usuario (não importa se é maiusculo ou minusculo, mas se tiver acento ele não encontra) no arquivo usuario.txt
                                grep -i "senha" senha.txt #Procura pela palavra senha (não importa se é maiusculo ou minusculo) no arquivo senha.txt

apt #(Advanced Packed Tool) Gerenciador de pacote do Debian
        apt install [nome do programa] #Instala um programa
        apt remove [nome do programa] #Remove um programa, mas mantém os arquivos de configuração
        apt purge [nome do programa] #Remove um programa e seus arquivos de configuração
        apt search [nome do programa] #Procura um programa nos repositórios
        apt show [nome do programa] #Exibe detalhes sobre um pacote
        apt update # Atualiza a lista de pacotes disponíveis nos repositórios
        apt upgrade #Instalar as atualizações disponíveis para o pacote
        apt upgrade && apt upgrade -y

#Instalando o tree
        su -
        senha #Senai@134
        apt install tree #Instalando programa tree
        tree --version #Verifica a versão instalado do tree

#Pra saber a versão software/aplicativo se já estiver instalado
[nome do programa] --version
Ex: tree --version #Pra saber se o programa tree está instalado

#SSH
apt update && apt install openssh-server -y # instalar e atualizar o serviço de SSH
systemctl status ssh #Tem que estar ACTIVE (running)
systemctl start ssh #Executar esse comando caso o resultado do comando acima não der ACTIVE (running)
systemctl enable ssh #Para habilitar o serviço de SSH

##SSh - Instalar o ufw
apt install ufw -y #Instalando o ufw
ufw enable #Habilitando o ufw
ufw allow ssh #Regra para liberar o serviço de SSH no Firewall

#Verificar se a regra foi aplicada 
ufw status (22/tcp allow)

#Para acessar via prompt no WIndows (CMD)
ssh [nome=do-usuário]@[ip-da-maquina]
        ssh aluno@172.16.57.XXX

#Desligar 
su -
Senha:
poweroff

| Pipe - ALT + 0124 (|)
			

Códigos de diretórios
- Arquivo
d Diretório
r Leitura
w Gravar
ex Executar

---------------------------------------------------------------------------

#COLOCAR USER ALUNO NO GRUPO

        su - # mudando para usuario root
        senha
        username -G sudo aluno # adiciona um usuario ao grupo
        groups #retorna ao qual grupo pertence o usuario atual [no caso aluno]
        su - aluno # voltando para usuario aluno
        senha



##################################################################################


        [CRIAÇAO DE USUARIO E GRUPOS]


#################################################################################


[ADICIONAR USUÁRIOS]

useradd # Criaçao de um usuário sem senha e sem a (pasta/diretório) home, especificar o -m
        sudo useradd [opçoes] [usuario]
        sudo useradd silvio
        cat /etc/passwd #verifica o do usuário

passwd # Define ou altera a senha de um usuário
        sudo passwd [Nome do usuário]
        sudo passwd silvio (Senha: 123)
                #nova senha:
                #redigite a nova senha: (123)
        cat /etc/passwd # Verifica o registro de usuário (nao mexem em nenhum do 1000 para baixo)        

     ** ls -lh  /usr/sbin ## Verifica se está na lista o programa desejado
        sudo useradd -m (especifica o usuário)
        user mod -G Sudo [nome user] # Serve para adicionar determinado usuário no grupo  (tem está no root)
        sudo useradd silvio # add um novo usuário no grupo sudo

bin # Diretório com arquivos e programas
bash # Interface das linhas, existem várias para baixar

_______________________________________________________________________________________________________

[ADICIONAR USUÁRIO COM SCRIPT]

adduser # Adiciona usuários e os associa a grupos

        test -f /usr/sbin/adduser && echo "encontrado" || echo "não encontrado" # Verifica se o adduser está instalado
        ls -lh /user/sbin # Verifica se está na lista o programa adduser

        # Para instalar o adduser
        sudo apt update && apt install adduser # Atualiza os pacotes e instala o adduser
        sudo adduser --version ## Verifica a versão instalada
        sudo adduser -h #Mostra o manual do adduser

[CRIAR USUÁRIO COM ADDUSER]

        sudo adduser [nome-do-usuário]
                sudo adduser silvio
                # nova senha:
                # redigita a nova senha:
                # Nome completo []:
                # Número da Sala[]:
                # Telefone de Trabalho[]:
                # Telefone Residêncial []:
                # Outro []:
                # As informações estão corretas? [S/N]

        cat /etc/passwd # Verifica o registro de usuário

        w # mostra os usuários logados e suas métricas
        lastlog # Exibe o último login dos usuários  var/log/lastlog
        last # Lista os usuários que logaram recentemente
                last rodrigo # Exibe as informações apenas do usuário "rodrigo"
                last -F # Exibe login e logout detalhados
                last -x # Mostra quantas vezes o S.O. foi ligado/desligado
                last -d # Mostra usuários que logaram pela rede com IP de origem

[MINI LAB - EXIBIR INFORMAÇOES DE USUÁRIOS]

                # Criar os usuarios: joao, pacheco, neemias, giullia, marchetti, yuri

id # Exibe ID do usuário, ID de grupo e grupos aos quais pertence
        id --user # Retorna o ID do usuário conectado
        id joao # retorna as informações do usuário "joão"

users # Lista os usuários logados no momento

groups {usuário} # Retorna os grupos aos quais um usuário pertence
        groups joão

logname # Retorna o nome do usuário logado na sessão atual



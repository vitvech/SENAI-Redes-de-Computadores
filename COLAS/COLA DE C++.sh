COLA DE C++

void setup () 
#Configurar a placa (PROGRAMAÇÃO)
{
   pinMode (1,Imput) ;  # Pino, Modo que vai atuar (Qual o pino, Entrada(Imput))
              Output # Saida




}     

void loop () 
#Comando de Repetição, quando chegar ao final da Linha, Reinicara o ciclo
# (EXECUÇÃO)
{
      digitalWrite (1, High) ;  # Estado, Escrever, (Pino, Ligado(High))
                       Low  #Desligado

}


delay (1000); # Por Milesimo


Serial.begin(9600); # Inicializar a comunicação serial com baud rate de 9600 
                        # baud rate = Velocidade de transferencia de dados

Serial.println("Deseja ligar o LED"); # Escreve uma mensagem no serial monitor

if(Serial.available()> 0) # Verificando se estamos recebendo informações na serial

int valor = Serial.read()- '0' # Convertendo o caractere recebido para um número inteiro



else # Se não
if # Se
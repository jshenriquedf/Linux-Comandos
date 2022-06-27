# Utilizando o HISTORY no SHELL

Essa página contém informções acerca do uso do History pelo SHELL.

> **Note**:  Esses comandos serão utilizado no AlmaLinux. (). 

## Definições

O comando history serve para listar o conteúdo do ~/.bash_history do usuário logado, e enumera as linhas do histórico de comandos.
Ele pode ser usado para ignorar os comandos duplicados ou comandos com espaço em branco à esquerda ou ambos. Algumas opções:

Comando:

    history [-c] [-d POSIÇÃO] [n] ou history -anrw [ARQUIVO] ou history -ps ARG [ARG...]
    
O comando history tem algumas opções a saber:

| Opções | Definição |
| --- | --- |
| -c | Limpe a lista do histórico excluindo todas as entradas. |
| -d offset | Exclua a entrada do histórico no deslocamento OFFSET. |
| -a | Anexe linhas de histórico desta sessão ao arquivo de histórico. |
| -n | Leia todas as linhas do histórico que ainda não foram lidas no arquivo de histórico. |
| -r | Leia o arquivo de histórico e anexe o conteúdo à lista de histórico. |
| -W | Escreva o histórico atual no arquivo de histórico e anexe-o à lista de histórico |
| -p | Execute a expansão do histórico em cada ARG e exiba o resultado sem armazená-lo na lista de históricos. |
| -s | Anexe os ARGs à lista do histórico como uma única entrada. |

O bash também oferece outras possibilidades de trabalho com o histórico de comandos:

| Atalho | Descrição |
| --- | --- |
| !! | Executa o último comando digitado |
| !n | Executa o comando na linha n no arquivo .bash_history |
| !texto | Executa o comando mais recente que inicia com o texto |
| !?texto | Executa o comando mais recente que contém o texto |
| ^texto1^texto2 | Executa o último comando substituindo o texto1 pelo texto2 |
| Alt M < | Vai para o início do arquivo .bash_history |
| Alt M > | Vai para o fim do arquivo .bash_history |
| Ctrl p | Recupera os comandos armazenados no arquivo .bash_history de trás para frente |
| Ctrl n | Recupera os comandos já listados de frente para trás |
| Ctrl b | Volta um caractere nos comandos já recuperados |
| Ctrl f | Anda um caractere para frente nos comandos já recuperados |
| Ctrl a | Volta para o início da linha nos comandos já recuperados |
| Ctrl e | Vai para o fim da linha nos comandos já recuperados |
| Ctrl l | Limpa a tela |
| Ctrl d | Apaga caracteres do texto do cursor até o fim da linha |
| Ctrl k | Apaga o texto do cursor até o fim da linha de uma só vez |
| Ctrl y | Cola o texto apagado pelo comando anterior na tela |
| Ctrl rtexto | Procura comandos que contenham o texto do último comando para o primeiro |
| Ctrl stexto | Procura comandos que contenham o texto do primeiro comando para o último |

Para exibir data e hora no comando history:

    nano ~/.bashrc
    export HISTTIMEFORMAT="%d/%m/%y %T "
    

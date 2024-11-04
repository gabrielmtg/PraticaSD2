# Atividade Prática II

Relatório da Atividade Prática II (AP2) de INE5406 em 2024.2. 

## Grupo 1

- Gabriel Martins: Matrícula 241033619
- Lucas de Oliveira Marisco: Matrícula 24104721

## Descrição dos circuitos

### SAD-V1

Este circuito recebe 64 números de 8 bits positivos de duas memórias de 64 linhas. Ele faz a soma das diferenças absolutas dos valores armazenados nas memórias.
Para cada endereço de memória, ele pega o valor armazenado nas memorias, faz a subtração dos numeros, tira o módulo do resultado e acumula o valor em um registrador, fazendo o mesmo com todos os valores.
Por fim, atualiza a saida com o resultado e muda o sinal "pronto" para 1.

### Circuito desenvolvido

Entradas: enable (faz o circuito iniciar), reset (reseta o estado fazendo voltar ao estado inicial), sample_ori e sample_can (buscam os valores das memorias).
Saídas: read_mam (sinal para fazer a leitura da memoria), address (endereço da memória a ser lido), sad_value (resultado) e done (pronto).

O circuito possui 2 blocos, o bloco de controle, que tem a FSM, e o bloco operativo que tem os componetes necessarios para fazer as operacoes da SAD-V1.

### Simulação
Para fazer a simulação primeiro tivemos que pegar os valores dos atrasos para podermos montar o arquivo do estimulos, então fomos atrasos do numero de ciclos que o sistema iria levar, nos slides da aula teorica tinha os cálculos prontos, sendo 195 ciclos a quantidade necessaria para concluir os sistema, então deveriamos multiplicar esse valor pelo clock escolhido, no nosso caso, como o clock que usamos para testar doi de 10, o tempo para concluir toda opereção seria de 195*10 = 1950. Porém como devemos considerar alguns atrasos para começar mais teste, colocamos 1980 para cobri-los(demorou um pouco pra gente descobrir essa, mas dando zoom no model sim dava pra ver esse atraso de uns 30 ns). Para os valores fizemos os teste somando 1 dos registradores com todos os valores em 1, porque era mais facil de calcular o resultado esperado, então como teriamos 11111111 = 255, e somariamos 255 + 0 64 vezes, era pra termos 255*64 = 16.320, que foi o resultado obtido.

### SAD-V3

Este circuito faz a mesma coisa que a SAD-V1, porém ele lê 4 numeros de cada vez das duas memorias, que tem 32 bits por linhas e 16 linhas (4 números de 8 bits por linha).
Para que isso possa acontecer, agora há 8 registradores que recebem os números das memórias, 4 subtratores e 4 ABS (que calculam o valor absoluto dos numeros) além de uma árvore de somas, constituida por 3 somadores, para obter uma soma das 4 diferenças absolutas obtidas pelos subtratores e módulos.

### Circuito desenvolvido

As entradas e saídas permanecem as mesmas do circuito anterior, mas agora há muitos mais sinais internos para conectar os novos componentes, com diferentes quantidades de bits. O bloco de controle foi mantido inalterado.

### Simulação
para testar fizemos tudo parecido com o SAD_V1, pegamos o atraso no timig analizer, obtivemos 104.3 MHz, convertemos para nanosegundos, dando 9.5877277085331, para facilitar colocamos como clock 10 segundo também. Olhando nos slides da aula da teorica vimos que teriamos 51 ciclos, logo 510 ns para concluir o sistema, então para ter uma folga no final e não ultrapar os atrasos colocamos 540(dando zoom no model sim dá pra ver que é mais ou menos no 531 que ele termina se preparar tudo). Quanto aos valores começamos somando vários 1s, ou seja, somamos 1+1+1+1  16 vezes, resultando em 64. Depois fizemos o mesmo teste do SAD_V1 para ver se dava o mesmo resultando e deu.


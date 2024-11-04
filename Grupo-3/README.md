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

### SAD-V3

Este circuito faz a mesma coisa que a SAD-V1, porém ele lê 4 numeros de cada vez das duas memorias, que tem 32 bits por linhas e 16 linhas (4 números de 8 bits por linha).
Para que isso possa acontecer, agora há 8 registradores que recebem os números das memórias, 4 subtratores e 4 ABS (que calculam o valor absoluto dos numeros) além de uma árvore de somas, constituida por 3 somadores, para obter uma soma das 4 diferenças absolutas obtidas pelos subtratores e módulos.

### Circuito desenvolvido

As entradas e saídas permanecem as mesmas do circuito anterior, mas agora há muitos mais sinais internos para conectar os novos componentes, com diferentes quantidades de bits. O bloco de controle foi mantido inalterado.

### Simulação


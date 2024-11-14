#Golden Model para SAD V3
import random

# Gera 50 valores binários aleatórios de 64 bits cada
# cada numero de 64 bits vai ser assim 32 bits pro A e 32 bits pro B
valores_binarios = [bin(random.randint(0, 255))[2:].zfill(8) for _ in range(64)]

for i, valor in enumerate(valores_binarios, 1): # percorre todos os 50 valores, enumerando-os a partir do 1
#     print(f"Valor binário {i}: {valor}")


    
    soma = 0
    for i in range(0,15):
        
        binaryA0 = valor[:8]
        binaryA1 = valor[8:16] 
        binaryA2 = valor[16:24] 
        binaryA3 = valor[24:32] 
        binaryB0 = valor[32:40] 
        binaryB1 = valor[40:48] 
        binaryB2 = valor[48:56] 
        binaryB3 = valor[56:64] 
        
        decimalA0 = int(binaryA0, 2)
        decimalA1 = int(binaryA1, 2)
        decimalA2 = int(binaryA2, 2)
        decimalA3 = int(binaryA3, 2)
        decimalB0 = int(binaryB0, 2)
        decimalB1 = int(binaryB1, 2)
        decimalB2 = int(binaryB2, 2)
        decimalB3 = int(binaryB3, 2)

        soma = soma + decimalA0 + decimalB0 + decimalA1 + decimalB1 + decimalA2 + decimalB2 + decimalA3 + decimalB3

    #print('Decimal esperado:');
    #print(soma, "/n");

#     print('Binario esperado:');
    binary = format(soma, '014b')
    print(str(valor[:8]) + ' ' + str(binary))
    # Valor de 64 bits de entrada e 


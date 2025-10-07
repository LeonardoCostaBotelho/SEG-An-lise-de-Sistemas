#-- Fórmula para calcular a área de um círculo
raio = float(input("Insira um valor para o raio"))
pi = 3.14159
area = raio ** 2 * pi
print ("A=", area)

#-- Caso queira imprimir na tela um limite de dígitos após o ponto decimal, o comando necessário será:
#-- "print("A={:.4f}".format(area))"
#-- "{:.4f}" 4 dígitos após o ponto float. E ".format" o valor da variavel que será mostrada.
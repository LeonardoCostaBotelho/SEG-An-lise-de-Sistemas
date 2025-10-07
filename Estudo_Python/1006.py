#-- Três variáveis são as notas de um aluno, cada nota tem um peso (respectivamente 2, 3, 5)
#-- O resultado deve ter uma casa decimal
#-- Calcular a média
A = float(input())
B = float(input())
C = float(input())
MEDIA = (A * 2 + B * 3 + C * 5)/10
print (f"MEDIA = {MEDIA:.1f}")
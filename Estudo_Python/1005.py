#-- Calcular dois valor flutuantes de duas notas de um aluno, estas notas tem pesos diferentes.
#-- Calcular a média delas
A = float(input())
B = float(input())
MEDIA = ((A * 3.5) + (B * 7.5)) / 11
print(f"MEDIA = {MEDIA:.5f}")
import numpy as np
import matplotlib.pyplot as plt

def meu_atan(x, eps=1e-6):
    if abs(x) > 1:
        # Utilizar a identidade para |x| > 1
        return np.pi/2 - meu_atan(1/x, eps) if x > 0 else -np.pi/2 - meu_atan(1/x, eps)
    
    # Calcular a série de Taylor para |x| <= 1
    term = x  # Primeiro termo da série
    atan_approx = term
    n = 1
    
    while abs(term) > eps:
        term = (-1)**n * x**(2*n + 1) / (2*n + 1)
        atan_approx += term
        n += 1
        
    return atan_approx

# Intervalo de -10 a 10
x_values = np.linspace(-10, 10, 500)
y_values = [meu_atan(x) for x in x_values]
error_values = [meu_atan(x) - np.arctan(x) for x in x_values]

# Gráfico com yyaxis
fig, ax1 = plt.subplots()

# Primeiro eixo y
ax1.set_xlabel('x')
ax1.set_ylabel('meu_atan(x)', color='tab:blue')
ax1.plot(x_values, y_values, color='tab:blue')
ax1.tick_params(axis='y', labelcolor='tab:blue')

# Segundo eixo y para o erro
ax2 = ax1.twinx()
ax2.set_ylabel('Erro', color='tab:red')
ax2.plot(x_values, error_values, color='tab:red')
ax2.tick_params(axis='y', labelcolor='tab:red')

plt.title('Aproximação de arctan(x) usando série de Taylor')
plt.grid()
plt.show()

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

temp_array = [18, 20, 23, 27, 29, 26, 22]
horarios_array = ['06h', '09h', '12h', '15h', '18h', '21h', '00h']

df = pd.DataFrame({'Horário': horarios_array, 'Temperatura': temp_array})

print(f'{df}\n')

media = np.mean(temp_array)
print(f'Média da temperatura: {media:.2f}°C \n')

plt.plot(horarios_array, temp_array, marker='o', color='orange', label='Temperatura ao longo do dia')
plt.xlabel('Horário do dia')
plt.ylabel('Temperatura °C')
plt.title('Variação da Temperatura durante o dia')
plt.grid(True)
plt.legend()
plt.show()

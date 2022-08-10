
Historial2 = (23500, 5960, 2300, 10200, 8900)
res = sum(list(Historial2))

def calculoGastos(Historial2):
    count = 0
    for element in Historial2:
        if element > 5000:
            count += 1
    return count

print(f"El monto total gastado a lo largo del tiempo por atención de “Frida” es de {res} pesos")
print(f"{calculoGastos(Historial2)} de los gastos realizados fueron superiores a 5000 pesos")

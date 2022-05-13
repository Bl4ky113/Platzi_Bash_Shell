#!/bin/bash

num_1=2
num_2=6

echo "Operadores Aritmeticos"
echo "A: $num_1; B: $num_2"
echo "Suma: A + B = " $((num_1 + num_2))
echo "Resta: A - B = " $((num_1 - num_2))
echo "Multiplicacion: A * B = " $((num_1 * num_2))
echo "Division: A / B = " $((num_1 / num_2))
echo "Modulacion: A % B = " $((num_1 % num_2))
echo "Potenciacion: A ** B? = " $((num_1 ** num_2))

echo "Operadores Relacionales"
echo "A: $num_1; B: $num_2"
echo "Mayor: A > B = " $((num_1 > num_2))
echo "Menor: A < B = " $((num_1 < num_2))
echo "Mayor o igual que: A >= B = " $((num_1 >= num_2))
echo "Menor o igual que: A <= B = " $((num_1 <= num_2))
echo "Igual que: A == B = " $((num_1 == num_2))
echo "Diferente que: A != B? = " $((num_1 != num_2))

echo "Operadores de Asignacion"
echo "A: $num_1; B: $num_2"
echo "Suma: A += B = " $((num_1 += num_2))
echo "Resta: A -= B = " $((num_1 -= num_2))
echo "Multiplicacion: A *= B = " $((num_1 *= num_2))
echo "Division: A /= B = " $((num_1 /= num_2))
echo "Modulacion: A %= B = " $((num_1 %= num_2))

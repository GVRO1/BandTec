package com.company;

import java.util.Scanner;

public class CalculadoraSalario {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Qual  é o seu salario?");
        Float salario = teclado.nextFloat();
        System.out.println("Qual o seu imposto?");
        Float imposto = teclado.nextFloat();
        Float liquido = salario - salario * imposto/100;
        System.out.printf("Se o seu salário for de %.2f , e o imposto for de %.2f porcento, o salario líquido será de %.2f",
                salario, imposto, liquido);

    }
}

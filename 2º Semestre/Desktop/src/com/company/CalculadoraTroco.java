package com.company;

import java.util.Scanner;

public class CalculadoraTroco {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Qual o valor do produto?");
        Float valor = teclado.nextFloat();
        System.out.println("Quantos produtos?");
        Integer volume = teclado.nextInt();
        System.out.println("Quanto foi pago?");
        Float pago = teclado.nextFloat();
        Float troco = pago - valor * volume;
        System.out.printf("Seu troco será de R$ %.2f",troco);

    }
}

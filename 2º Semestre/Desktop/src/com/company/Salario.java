package com.company;

import java.util.Scanner;

public class Salario {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Qual o limite de peso do elevador?");
        Integer limitePeso = teclado.nextInt();
        System.out.println("Qual o limite de pessoas no elevador?");
        Integer limitePessoas = teclado.nextInt();
        System.out.println("Qual o peso da primeira pessoa?");
        Integer primeira = teclado.nextInt();
        System.out.println("Qual o peso da segunda pessoa?");
        Integer segunda = teclado.nextInt();
        System.out.println("Qual o peso da terceira pessoa?");
        Integer terceira = teclado.nextInt();
        System.out.printf("Entraram 3 pessoas no elevador, no qual cabem %d\n",limitePessoas);
        Integer soma = primeira + segunda + terceira;
        System.out.printf("O peso total do elevador é de %d, sendo que suporta %d\n", soma, limitePeso);


    }
}

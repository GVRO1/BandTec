package com.company;

import java.util.Scanner;

public class Calculadora {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Digite um numero:");
        Integer numero = teclado.nextInt();
        System.out.println("Digite outro numero:");
        Integer numero2 = teclado.nextInt();
        Integer soma = numero +  numero2;
        Integer subtracao = numero -  numero2;
        Integer multiplicacao = numero *  numero2;
        Integer divisao = numero *  numero2;
        System.out.println("Resultado da soma:");
        System.out.println(soma);
        System.out.println("Resultado da subtraçao:");
        System.out.println(subtracao);
        System.out.println("Resultado da multiplicacao:");
        System.out.println(multiplicacao);
        System.out.println("Resultado da divisão");
        System.out.println(divisao);


    }
}


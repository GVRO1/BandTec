package com.company;

import java.util.Scanner;

public class Idade {
    public static void main(String[] args) {
        System.out.println("Qual o seu nome?");
        Scanner teclado = new Scanner(System.in);
        String nome = teclado.nextLine();
        System.out.printf("Olá %s, Qual o ano de seu nascimento?", nome);
        Integer ano = teclado.nextInt();
        Integer idade = 2030 - ano;
        System.out.printf("Em 2030 você terá %d anos", idade);

    }
}

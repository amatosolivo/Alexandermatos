package Aplicacion;

import Utilitarios.GeneradorNumerico;

import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // Aletorios
        Scanner in = new Scanner(System.in);

        System.out.println("Que cantidad de aletorios quiere?");
        String aleatorios = in.nextLine();
        if (aleatorios.isEmpty()) {
            aleatorios = "5";
        }
        var res1 = GeneradorNumerico.generaAleatorio(Integer.parseInt(aleatorios.trim()));
        Arrays.stream(res1).forEach(System.out::println);

        // Primos
        System.out.println("Indique la cantidad de numeros primos que quiere?");
        String primos = in.nextLine();
        if (primos.isEmpty()) {
            primos = "9";
        }
        var res2 = GeneradorNumerico.generarPrimos(Integer.parseInt(primos.trim()));
        res2.forEach(System.out::println);

        // Cajero Automatico
//            System.out.println("Monto a desglozar en denominaciones?");
//            String monto = in.nextLine();
//            var res3 = CajeroAutomatico.cantidadDeBilletes(Float.valueOf(monto));
//            System.out.println(res3.toString());
    }
}

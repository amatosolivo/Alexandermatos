package Utilitarios;

import com.google.common.math.IntMath;

import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.IntPredicate;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class GeneradorNumerico {
    public static final int[] generaAleatorio(int cantidad) {
        // Validaciones
        if (cantidad > 20) { throw new IllegalArgumentException("Solo puede pedir un maximo de 20 aletorios"); }
        if (cantidad == 0) { throw new IllegalArgumentException("La cantidad minima de aleatorios debe ser mayor que cero"); }

        // Proceso: Genera numeros aleatorios distintos entre 1 y 100
        IntStream aleatorios = IntStream.generate(() -> { return (int)(Math.floor(Math.random() * (100 - 1) + 1)); }).distinct();
        return aleatorios.limit(cantidad).toArray();
    }

    public static final List<Integer> generarPrimos(int cantidad) {
        // Predicado
        IntPredicate esprimo = n ->  IntMath.isPrime(n);

        // Origen
        IntStream fuente = IntStream.rangeClosed(1,100);

        // Proceso
        List<Integer> primos = fuente.filter(esprimo).boxed().collect(Collectors.toList());
        return primos.stream().limit(cantidad).toList();
    }
}

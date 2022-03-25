package Utilitarios;


import org.junit.Test;

import java.util.Arrays;
import java.util.Collections;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class GeneradorNumericoTest {

    @Test
    public void cantidadDeAleatoriosDos() {
        var resultado= GeneradorNumerico.generaAleatorio(2);
        assertEquals(2, resultado.length);
    }

    @Test
    public void verificaQueElAleatorioEstaEntr1y100() {
        var resultado= GeneradorNumerico.generaAleatorio(2);
        var max = Arrays.stream(resultado).max();
        var min = Arrays.stream(resultado).min();
        assertEquals(true, min.getAsInt() >= 1 && max.getAsInt() <= 100);
    }

    @Test
    public void verificaQueNoHayMasDe20Elementos() {
        var resultado= GeneradorNumerico.generaAleatorio(2);
        assertEquals(true, resultado.length <= 20);
    }
}
package Perrera;

public class PerroEspecial extends Perro {

    //Metodo para que los perros especiales se puedan alimentar dependiendo del peso del perrito
    @Override
    public void alimentar() {
        //la función para calcular lo que tiene que comer es: 5-2 log(10,x) * 100
        float comida = (float) ((5 - 2 * Math.log10(getPeso())) / 10);
        setPeso(getPeso() + comida);
    }

}

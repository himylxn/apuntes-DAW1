package Perrera;

public class PerrosEspeciales extends Perro{

	//Metodo para que los perros especiales se puedan alimentar dependiendo del peso del perrito
	public void AlimentarPerrosEspeciales() {
		Perro perro = new Perro ();
		
		if(perro.getPeso()<=4) {
			System.out.println("Perro de menos de 4 kilos alimentado");
			peso = peso + 0.40f;
		}if (perro.getPeso()<=6) {
				System.out.println("Perro de menos de 6 kilos alimentado");
				peso = peso + 0.35f;
			}if (perro.getPeso()<=8) {
					System.out.println("Perro de menos de 8 kilos alimentado");
					peso = peso + 0.30f;
			}if (perro.getPeso()<=10) {
						System.out.println("Perro de menos de 10 kilos alimentado");
						peso = peso + 0.25f;	
			}else {
					System.out.println("Perro de más de 10 kilos alimentado");
					peso = peso + 0.20f;
			}				
		}










}

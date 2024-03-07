package Perrera;

import java.util.Scanner;

public class Hotel {
	
	private int numPerros;
	
	//Getters and Setters
	public int getNumPerros() {
		return numPerros;
	}

	public Hotel() {
		this.numPerros = 0;
		this.perros =  new Perro[10];
	}

	//Array de los perros (10 como máximo)
	private Perro[] perros;
	
	//Metodo para registar a los perros
	public void registrarPerro(Perro perro) {
		Scanner sc = new Scanner(System.in);

		System.out.println("Ingresa los datos del perrito: ");

		System.out.println("Ingresa el nombre: ");
		perro.setNombre(sc.next());

		try{
			System.out.println("Ingresa el peso: ");
			perro.setPeso(sc.nextFloat());
		} catch (Exception e){
			System.out.println("El peso debe ser un número");
			return;
		}

		System.out.println("Ingresa el color: ");
		perro.setColor(sc.next());

		perros[numPerros]=perro;
		numPerros++;
	}
	
	
	//Metodo mostrar a los perros
	public void mostrarPerros() {
		if (numPerros==0) {
			System.out.println("Aun no hay perritos registrados :C");
		}else {
			for (int i = 0; i < numPerros; i++) {
				System.out.println(perros[i].toString());
				System.out.println("------------------------------------------------------------------");
			}
		}
	}

	public void mostrarNumPerros() {
		System.out.println("El número de perritos registrados es: " + numPerros);
	}

	public void alimentarPerros(){
		if (numPerros==0) {
			System.out.println("Aun no hay perritos registrados :C");
		}else {
			for (int i = 0; i < numPerros; i++) {
				perros[i].alimentar();
			}
			System.out.println("San alimentao loh perro' :D");
		}
	}

	public void pasearPerros() {
		if (numPerros==0) {
			System.out.println("Aun no hay perritos registrados :C");
		}else {
			for (int i = 0; i < numPerros; i++) {
				perros[i].pasear();
			}
			System.out.println("San paseao loh perro' :D");
		}
	}
}

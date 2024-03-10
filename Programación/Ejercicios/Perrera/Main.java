package Perrera;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		boolean salir = false;

		Hotel hotel = new Hotel();

		while(!salir) {
			int opcion=0;

			System.out.println("------------------------------------------------------------------");
			System.out.println("Hola, muy buenos dias. Bienvenidos al hotel de perros");
			System.out.println("Opciones: ");
			System.out.println("1. Registrar perrito");
			System.out.println("2. Registrar perro especial");
			System.out.println("3. Ver los datos de los perritos registrados en el hotel");
			System.out.println("4. Ver número total de perritos registrados en el hotel");
			System.out.println("5. Alimentar a los perritos");
			System.out.println("6. Sacar a pasear a los perritos");
			System.out.println("7. Salir");
			System.out.println("------------------------------------------------------------------");

			System.out.println("Igrese su opción: ");
			System.out.println("------------------------------------------------------------------");
			opcion = sc.nextInt();

			switch(opcion) {
			case 1:
				hotel.registrarPerro(new Perro());
				break;
			case 2:
				hotel.registrarPerro(new PerroEspecial());
				break;
			case 3:
				hotel.mostrarPerros();
				break;
			case 4:
				hotel.mostrarNumPerros();
				break;
			case 5:
				hotel.alimentarPerros();
				break;
			case 6:
				hotel.pasearPerros();
				break;
			case 7:
				salir=true;
				break;
			default:
				System.out.println("Opción no válida");
				break;
			}
		}



	}

}

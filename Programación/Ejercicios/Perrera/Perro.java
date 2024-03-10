package Perrera;

public class Perro {
	private String nombre;
	private float peso;
	private String color;
	
	
	//Constructor Vacio
	public Perro() {
		super();
	}
	
	//Constructor con parametros
	public Perro(String nombre, int peso, String color) {
		super();
		this.nombre = nombre;
		this.peso = peso;
		this.color = color;
	}

	
	//Getters y Setters
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public float getPeso() {
		return peso;
	}

	public void setPeso(float peso) {
		this.peso = peso;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
	
	//Metodo para Alimentar al Perro
		public void alimentar() {
			peso = peso + 0.5f;
		}
			
	//Metodo para sacar a pasear al Perro
		public void pasear() {
			peso = peso - 0.5f;
		}

			
	//Metodo para enseñar todos los datos de los perros
		@Override
		public String toString() {
			return "Nombre: " + nombre + "\n"
					+ "Peso: " + peso + "\n"
							+ "Color: " + color;
		}

		
	
	
		
		
}

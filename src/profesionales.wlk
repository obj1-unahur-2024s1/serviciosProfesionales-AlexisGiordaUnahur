import universidad.*

class ProfesionalVinculado {
	var universidad
	
	method universidad() = universidad 
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() = universidad.provincia()
	method honorariosPorHora() = universidad.honorariosPorHora()
}

class ProfesionalAsociado {
	var universidad
	
	method universidad() = universidad 
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() = #{"entreRios", "corrientes", "santaFe"}
	method honorariosPorHora() = 3000
}

class ProfesionalLibre {
	var universidad
	var provincias
	var honorarios
	
	method universidad() = universidad 
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() = provincias
	method honorariosPorHora() = honorarios
}

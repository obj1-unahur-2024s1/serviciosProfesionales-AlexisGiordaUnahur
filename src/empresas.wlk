import profesionales.*
import universidad.*

class Empresa {
	const profesionales
	const honorarioReferencia
	
	method profesionales() = profesionales
	method honorariosReferencia() = honorarioReferencia
	method cuantosEstudiaronEn(unaUniversidad) = profesionales.filter({p=>p.universidad() == unaUniversidad}).size()
	method profesionalesCaros() = profesionales.filter({p=>p.honorariosPorHora() > honorarioReferencia}).asSet()
	method universidadesFormadoras() = profesionales.map({p=>p.universidad()}).asSet()
	method profesionalMasBarato() = profesionales.min({p=>p.honorariosPorHora()})
	method esDeGenteAcotada() = profesionales.all({p=>p.provinciasDondePuedeTrabajar().size() < 4})
}

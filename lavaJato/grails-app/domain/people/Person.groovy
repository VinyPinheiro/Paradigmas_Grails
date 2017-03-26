package people

abstract class Person {

	String cpf
	String nome
	String telefone

    static constraints = {
    	cpf unique:true
    }

    static mapping = {
    	tablePerHierarchy false
	}
}

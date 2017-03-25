package people

class Person {

	Integer cpf
	String nome
	String telefone

    static constraints = {
    }

    static mapping = {
    	tablePerHierarchy false
	}
}

package carWash

class Car {

	String model
	String board
	Integer year
	people.Client client

    static constraints = {
    	year max: (Calendar.getInstance().get(Calendar.YEAR))
    	year min: 0
    	board unique:true
    }

    String toString(){
    	return this.id + " - " + this.board
    }
}

package carWash

class Car {

	String model
	String board
	Integer year

    static constraints = {
    	year max: (new Date()).getYear()
    }
}

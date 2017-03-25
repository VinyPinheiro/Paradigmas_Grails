package carWash

class Car {

	String model
	String board
	Integer year

	static belongsTo = [service : carWash.Service]

    static constraints = {
    	year max: (new Date()).getYear()
    }
}

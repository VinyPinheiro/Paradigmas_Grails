package carWash

class Car {

	String model
	String board
	Integer year

	static belongsTo = [service : carWash.Service]

    static constraints = {
    }
}

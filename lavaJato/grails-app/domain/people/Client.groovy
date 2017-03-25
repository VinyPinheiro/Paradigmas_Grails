package people

class Client extends Person{

	String payment
	Date mambershipDate

	static hasMany = [car : carWash.Car]

    static constraints = {
    }
}

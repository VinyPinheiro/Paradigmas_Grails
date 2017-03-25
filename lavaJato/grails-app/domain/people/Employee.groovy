package people

class Employee extends Person{

	Date haringDate
	Date startOfWork
	Date endOfWork

	static hasOne = [service : carWash.Service]

    static constraints = {
    }
}

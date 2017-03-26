package people

import org.joda.time.*

class Employee extends Person{

	Date haringDate
	LocalTime startOfWork
	LocalTime endOfWork

	static hasMany = [service : carWash.Service]


    static constraints = {
    }
}

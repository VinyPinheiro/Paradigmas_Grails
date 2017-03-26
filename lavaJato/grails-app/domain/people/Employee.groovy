package people

import org.joda.time.*

class Employee extends Person{

	Date haringDate
	LocalTime startOfWork
	LocalTime endOfWork
	carWash.Service	service;


    static constraints = {
    	service nullable:true
    }
}

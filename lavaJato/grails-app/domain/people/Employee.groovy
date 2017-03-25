package people

class Employee extends Person{

	Date haringDate
	Date startOfWork
	Date endOfWork
	carWash.Service	service;


    static constraints = {
    	service nullable:true
    }
}

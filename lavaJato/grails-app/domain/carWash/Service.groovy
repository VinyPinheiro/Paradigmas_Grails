package carWash

class Service {

	Float price
	String type
	Date start
	Date expected

	static belongsTo = people.Employee
	static hasOne = [car : carWash.Car]
	static hasMany = [material : carWash.Material]

    static constraints = {
    }
}

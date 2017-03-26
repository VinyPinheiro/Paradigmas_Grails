package carWash

import org.joda.time.*

class Service {

	Float price
	String type
	LocalTime start
	LocalTime expected

	static hasMany = [material : carWash.Material]

    static constraints = {
    }
}

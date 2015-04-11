package paydork

class Student {
	
	String name
	
	Date dateCreated
	Date lastUpdated
	
	static hasMany = [causeStudents: CauseStudent]
	
	static belongsTo = [schoolClass: SchoolClass]
	
    static constraints = {
    }
	
	def addToCauses(Cause cause) {
		CauseStudent.link(this, cause)
	}
	
	def removeFromCauses(Cause cause) {
		CauseStudent.unlink(this, cause)
	}
}

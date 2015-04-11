package paydork

class Cause {
	
	String name
	String description
	
	BigDecimal price
	BigDecimal pricePerStudent
		
	boolean paidFor = false
	
	Date tripDate
	Date dueDate
	Date dateCreated
	Date lastUpdated
	
	static hasMany = [causeStudents: CauseStudent, causeEditors: CauseEditor]

	static belongsTo = [schoolClass: SchoolClass]
	
    static constraints = {
    }
	
	def addToStudents(Student student) {
		CauseStudent.link(student, this)
	}
	
	def removeFromStudens(Student student) {
		CauseStudent.unlink(student, this)
	}
	
	def addToEditors(User user) {
		CauseEditor.link(user, this)
	}
	
	def removeFromEditors(User user) {
		CauseEditor.unlink(user, this)
	}
}

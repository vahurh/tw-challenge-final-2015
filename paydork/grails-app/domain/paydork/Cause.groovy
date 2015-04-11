package paydork

class Cause {
	
	String name
	String description
	String image
	
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
	
	def students() {
		causeStudents.collect{it.student}
	}
	
	def editors() {
		causeEditors.collect{it.teacher}
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

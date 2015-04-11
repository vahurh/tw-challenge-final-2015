package paydork

class CauseStudent {
	
	Cause cause
	Student student
	boolean hasPaid = false
	
	static belongsTo = [Cause, Student]

    static constraints = {
    }
	
	static void link(Student student, Cause cause) {
		def cs = CauseStudent.findByStudentAndCause(student, cause)
		if (!cs) {
			cs = new CauseStudent()
			student?.addToCauseStudents(cs)
			cause?.addToCauseStudents(cs)
			cs.save(flush: true)
		}
	}
	
	static void unlink(Student student, Cause cause) {
		def cs = CauseStudent.findByStudentAndCause(student, cause)
		if (cs) {
			student?.removeFromCauseStudents(cs)
			cause?.removeFromCauseStudents(cs)
			cs.delete(flush: true)
		}
	}
}

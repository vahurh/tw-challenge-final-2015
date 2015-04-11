package paydork

class CauseEditor {

	Cause cause
	User teacher
	
	static belongsTo = [User, Cause]
	
    static constraints = {
    }
	
	static void link(User teacher, Cause cause) {
		def ce = CauseEditor.findByTeacherAndCause(teacher, cause)
		if (!ce) {
			ce = new CauseEditor()
			teacher?.addToCauseEditors(ce)
			cause?.addToCauseEditors(ce)
			ce.save(flush: true)
		}
	}
	
	static void unlink(User teacher, Cause cause) {
		def ce = CauseEditor.findByTeacherAndCause(teacher, cause)
		if (ce) {
			teacher?.removeFromCauseEditors(ce)
			cause?.removeFromCauseEditors(ce)
			ce.delete(flush: true)
		}
	}
}

package paydork

class CauseController {

    def view() {
		def cause = Cause.get(params.id)
		def students = cause.students()
		
		return [cause: cause, students: students]
	}
}

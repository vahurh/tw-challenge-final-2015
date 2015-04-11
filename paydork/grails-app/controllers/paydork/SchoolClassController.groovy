package paydork
import grails.plugin.springsecurity.annotation.Secured

class SchoolClassController {

	@Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def create() {
		
		def user = getAuthenticatedUser()
		
		if (request.method == "POST") {
			def schoolClass = new SchoolClass(params)
			schoolClass.teacher = user
			if (schoolClass.save(flush: true)) {
				redirect (uri: "/")
			} else return [schoolClass: schoolClass]
		}
		
	}
	
	@Secured(['ROLE_ADMIN', 'ROLE_USER'])
	def edit() {
		def schoolClass = SchoolClass.get(params.id)
		def students = schoolClass.students.sort{it.name}
		def user = getAuthenticatedUser()
		
		if (user != schoolClass.teacher) {
			redirect (uri: "/")
		}
		
		if (request.method == "POST") {
			schoolClass.properties = params
			if (schoolClass.validate()) {
				schoolClass.save(flush: true)
				redirect (uri: "/")
			} else return [schoolClass: schoolClass, students: students]
		} else return [schoolClass: schoolClass, students: students]
		
	}
	
	@Secured(['ROLE_ADMIN', 'ROLE_USER'])
	def addStudent() {
		def schoolClass = SchoolClass.get(params.id)
		def user = getAuthenticatedUser()
		
		if (user != schoolClass.teacher) {
			redirect (uri: "/")
		}
		
		if (request.method == "POST") {
			def student = new Student(params)
			student.schoolClass = schoolClass
			if (student.save(flush: true, failOnError: true)) {
				redirect (controller: "schoolClass", action: "edit", params: [id: schoolClass.id])
			} else redirect (controller: "schoolClass", action: "edit", params: [id: schoolClass.id, student: student])
		} else redirect (controller: "schoolClass", action: "edit", params: [id: schoolClass.id])
	}
	
	@Secured(['ROLE_ADMIN', 'ROLE_USER'])
	def deleteStudent() {
		def schoolClass = SchoolClass.get(params.id)
		def user = getAuthenticatedUser()
		
		if (user != schoolClass.teacher) {
			redirect (uri: "/")
		}
		
		def student = Student.get(params.studentId)
		student.delete(flush: true)
		redirect (controller: "schoolClass", action: "edit", params: [id: schoolClass.id, student: student])
	}
}

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
		def user = getAuthenticatedUser()
		
		if (user != schoolClass.teacher) {
			redirect (uri: "/")
		}
		
		if (request.method == "POST") {
			schoolClass.properties = params
			if (schoolClass.validate()) {
				schoolClass.save(flush: true)
				redirect (uri: "/")
			} else return [schoolClass: schoolClass]
		} else return [schoolClass: schoolClass]
		
	}
}

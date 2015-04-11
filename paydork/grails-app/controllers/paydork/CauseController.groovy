package paydork
import grails.plugin.springsecurity.annotation.Secured

class CauseController {

    def view() {
		def cause = Cause.get(params.id)
		def students = cause.students()
		
		return [cause: cause, students: students]
	}
	
	@Secured(['ROLE_ADMIN', 'ROLE_USER'])
	def create() {
		def user = getAuthenticatedUser()
		def schoolClasses = user.schoolClasses.collect{it.name}
		
		if (request.method == "POST") {
			def cause = new Cause(name: params.name, description: params.description,
				image: params.image, price: params.price.toBigDecimal(), 
				pricePerStudent: params.price.toBigDecimal())
			cause.schoolClass = SchoolClass.findByName(params.schoolClass)
			cause.tripDate = new Date()
			cause.dueDate = new Date()
			if (cause.save(flush: true, failOnError: true)) {
				redirect (controller: "cause", action: "view", params: [id: cause.id])
			} else return [cause: cause]
		} else return [schoolClasses: schoolClasses]
	}
	
	@Secured(['ROLE_ADMIN', 'ROLE_USER'])
	def edit() {
		def user = getAuthenticatedUser()
		def cause = Cause.get(params.id)
		
		if (user != cause.schoolClass.user) redirect (uri: "/")
		
		if (request.method == "POST") {
			cause.schoolClass = SchoolClass.findByName(params.schoolClass)
			if(cause.validate()) {
				cause.save(flush: true)
				redirect (controller: "cause", action: "view", params: "[id: cause.id]")
			} else return [cause: cause]
		} else return [cause: cause]
	}
	
	@Secured(['ROLE_ADMIN', 'ROLE_USER'])
	def list() {
		def user = getAuthenticatedUser()
		def causes = getUserCauses(user)
		
		
		return [causes: causes]
	}
	
	private getUserCauses(User user) {
		def c = Cause.createCriteria()
		def causes = c.list {
			schoolClass {
				eq('teacher', user)
			}
			order('dateCreated', 'desc')
		}
		return causes
	}
}

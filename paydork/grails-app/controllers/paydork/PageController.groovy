package paydork

class PageController {

    def index() {
		def user = getAuthenticatedUser()
		
		if (user) {
			def causes = getUserCauses(user)
			def classes = user.schoolClasses
			render(view: "dashboard", model: [classes: classes, causes: causes])
		}
		
	}
	
	def contact() {}
	
	def howTo() {}
	
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

package paydork

class UserController {
	
	def springSecurityService

    def register() {
		
		if (request.method == "POST") {
			def user = new User(params)
			user.avatar = "http://elasticbeanstalk-eu-west-1-259189460812.s3.amazonaws.com/images/user/main/user19-main-vp8TVvIDpN.jpg"
			
			if (user.save(flush: true)) {
				def role = Role.findByAuthority('ROLE_USER')
				if (role) {
					UserRole.create(user, role, true)
				}
				springSecurityService.reauthenticate(user.username)
				
				redirect(uri: "/")
			} else return [user: user]
		}
	}
}

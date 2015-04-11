package paydork

class UserController {

    def register() {
		
		if (request.method == "POST") {
			def user = new User(params)
			
			if (user.save(flush: true)) {
				def role = Role.findByAuthority('ROLE_USER')
				if (role) {
					UserRole.create(user, role, true)
				}
				
				redirect(uri: "/")
			} else return [user: user]
		}
	}
}

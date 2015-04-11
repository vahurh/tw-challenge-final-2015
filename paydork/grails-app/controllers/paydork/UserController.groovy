package paydork

class UserController {

    def register() {
		
		if (request.method == "POST") {
			def user = new User(params)
			
			if (user.save(flush: true)) {
				redirect(uri: "/")
			} else return [user: user]
		}
	}
}

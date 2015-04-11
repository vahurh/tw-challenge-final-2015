package paydork

class User {

	transient springSecurityService

	String username
	String password
	
	String name
	
	boolean enabled = true
	boolean accountExpired = false
	boolean accountLocked = false
	boolean passwordExpired = false
	
	static hasMany = [schoolClasses: SchoolClass, causeEditors: CauseEditor]

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
	
	def addToCauseEditors(Cause cause) {
		CauseEditor.link(this, cause)
	}
	
	def removeFromCauseEditors(Cause cause) {
		CauseEditor.unlink(this, cause)
	}
}

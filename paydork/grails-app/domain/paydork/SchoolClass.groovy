package paydork

class SchoolClass {
	
	String name
	
	static hasMany = [students: Student, causes: Cause]
	
	static belongsTo = [teacher: User]

    static constraints = {
    }
}

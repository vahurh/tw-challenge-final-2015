import paydork.Cause
import paydork.SchoolClass
import paydork.User
import paydork.Student

class BootStrap {

    def init = { servletContext ->
		
		def teacher = new User(username: "teacher", password: "sala", name: "Fly Guy").save(failOnError: true)
		def editor = new User(username: "editor", password: "sala", name: "For A White Guy").save(failOnError: true)
		
		def schoolClass = new SchoolClass(name: "GAG 12D", teacher: teacher).save(failOnError: true)
		
		def student = new Student(name: "Walk Guy", schoolClass: schoolClass).save(failOnError: true)
		def student2 = new Student(name: "Johnny Walker", schoolClass: schoolClass).save(failOnError: true)
		
		def cause = new Cause(name: "Bear observation in Tartu", description: "We leave at 9pm and WILL HAVE A NICE TIME!", schoolClass: schoolClass,
			price: 200, pricePerStudent: 20, tripDate: new Date(), dueDate: new Date()).save(failOnError: true)
		
		cause.addToStudents(student)
		cause.addToStudents(student2)
		cause.addToEditors(editor)
		
    }
	
	
    def destroy = {
		
    }
}

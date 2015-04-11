import paydork.Cause
import paydork.Role
import paydork.SchoolClass
import paydork.User
import paydork.UserRole
import paydork.Student

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
		
		def teacher = new User(username: "teacher", password: "sala", name: "Fly Guy",
			avatar: "http://elasticbeanstalk-eu-west-1-259189460812.s3.amazonaws.com/images/user/main/user4-main-xFr1INUbRD.jpg").save(failOnError: true)
		def editor = new User(username: "editor", password: "sala", name: "For A White Guy", 
			avatar: "http://elasticbeanstalk-eu-west-1-259189460812.s3.amazonaws.com/images/user/main/user4-main-xFr1INUbRD.jpg").save(failOnError: true)
		
		UserRole.create(teacher, adminRole, true)
		UserRole.create(editor, userRole, true)
			
		def schoolClass = new SchoolClass(name: "GAG 12D", teacher: teacher).save(failOnError: true)
		
		def student = new Student(name: "Walk Guy", schoolClass: schoolClass).save(failOnError: true)
		def student2 = new Student(name: "Johnny Walker", schoolClass: schoolClass).save(failOnError: true)
		
		def cause = new Cause(name: "Bear observation in Tartu", description: "We leave at 9pm and WILL HAVE A NICE TIME! You will also bring cookies, two doughnuts and a dog. I want everyone to be dressed properly and wear a bow-tie. Please don't bring any cars nor big red popsicles.", 
			schoolClass: schoolClass, image: "bear.jpg", price: 200, pricePerStudent: 20, tripDate: new Date(), 
			dueDate: new Date()).save(failOnError: true)
			
		def cause2 = new Cause(name: "Tuhala nõiakaev", description: "We leave at 9pm and WILL HAVE A NICE TIME! You will also bring cookies, two doughnuts and a dog. I want everyone to be dressed properly and wear a bow-tie. Please don't bring any cars nor big red popsicles.",
			schoolClass: schoolClass, image: "waterfall.jpg", price: 900, pricePerStudent: 10, tripDate: new Date(),
			dueDate: new Date()).save(failOnError: true)
			
		def cause3 = new Cause(name: "Skiing in Himos", description: "We leave at 9pm and WILL HAVE A NICE TIME! You will also bring cookies, two doughnuts and a dog. I want everyone to be dressed properly and wear a bow-tie. Please don't bring any cars nor big red popsicles.",
			schoolClass: schoolClass, image: "ski.jpg", price: 50, pricePerStudent: 5, tripDate: new Date(),
			dueDate: new Date()).save(failOnError: true)
		
		cause.addToStudents(student)
		cause.addToStudents(student2)
		cause2.addToStudents(student)
		cause2.addToStudents(student2)
		cause3.addToStudents(student)
		cause3.addToStudents(student2)
		cause.addToEditors(editor)
		
    }
	
	
    def destroy = {
		
    }
}

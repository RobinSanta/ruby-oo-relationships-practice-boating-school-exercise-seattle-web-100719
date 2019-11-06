class Student

	attr_reader :first_name
	@@all = []

	def initialize(first_name)
		@first_name = first_name
		@@all << self
	end

	def add_boating_test(instructor, test_name)
		BoatingTest.new(self, instructor, test_name)
	end

	def self.all
		@@all
	end

	def self.find_student(name)
		@@all.find {|student| student.first_name == name}
	end

	def grade_percentage
		t1 = BoatingTest.all.select {|boating_test| boating_test.student == self}.map {|boating_test| boating_test.test_status}.select {|x| x == "Passed"}.length.to_f

		t2 = BoatingTest.all.select {|boating_test| boating_test.student == self}.map {|boating_test| boating_test.test_status}.length.to_f

		t1 / t2
	end

end

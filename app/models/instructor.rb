class Instructor
	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def pass_student(student, test_name)
		t1 = BoatingTest.all.find {|boating_test| boating_test.test_name == test_name}
		s1 = BoatingTest.all.find {|boating_test| boating_test.student == student}

		if t1 && s1
			t1.test_status = "Passed"
		else
			BoatingTest.new(student, self, test_name, "Passed")
		end

	end

	def fail_student(student, test_name)
		t1 = BoatingTest.all.find {|boating_test| boating_test.test_name == test_name}
		s1 = BoatingTest.all.find {|boating_test| boating_test.student == student}

		if t1 && s1
			t1.test_status = "Failed"
		else
			BoatingTest.new(student, self, test_name, "Failed")
		end
	end



	def self.all
		@@all
	end

end

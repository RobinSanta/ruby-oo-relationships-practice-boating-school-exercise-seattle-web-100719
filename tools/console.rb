require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

revy = Student.new("Revy")
rock = Student.new("Rock")

dutch = Instructor.new("Dutch")
benny = Instructor.new("Benny")

test_1 = BoatingTest.new(revy, dutch, "Chase", "Passed")
test_2 = BoatingTest.new(rock, dutch, "Drift", "Passed")
test_3 = BoatingTest.new(revy, benny, "Church of Violence", "Passed")
test_4 = BoatingTest.new(rock, benny, "Hotel Moscow", "Passed")
test_5 = BoatingTest.new(revy, dutch, "Triads", "Failed")
test_6 = BoatingTest.new(rock, benny, "Yakuza", "Failed")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line


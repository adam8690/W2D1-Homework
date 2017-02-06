require('minitest/autorun')
require('minitest/rg')
require_relative('../students.rb')

class TestStudents < MiniTest::Test


def test_get_name
  student = Student.new("Adam", 10, "Hello I am talking")
  assert_equal("Adam", student.get_name)
end

def test_get_cohort
  student = Student.new("Adam", 10, "Hello I am talking")
  assert_equal(10, student.get_cohort )
end

def test_set_name
  student = Student.new("Adam", 10, "Hello I am talking")
  student.name = "Jim"
  assert_equal("Jim", student.get_name)
end

def test_set_cohort
  student = Student.new("Adam", 10, "Hello I am talking")
  student.cohort = 11
  assert_equal(11, student.get_cohort)
end

def test_student_phrase
  student = Student.new("Adam", 10, "Hello I am talking")
  talk = student.talk
assert_equal("Hello I am talking", talk)
end

def test_Fav_lang
  student = Student.new("Adam", 10, "Hello I am talking")
  assert_equal("I love Ruby", student.fav_lang("Ruby"))
end


end
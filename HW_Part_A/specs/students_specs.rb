require('minitest/autorun')
require('minitest/rg')
require_relative('../students')

class TestStudent < MiniTest::Test

def test_student_name()
  student = Student.new('Ahmed', 'E33')
  assert_equal('Ahmed', student.name())
end

def test_cohort()
  student = Student.new('Ahmed', 'E33')
  assert_equal('E33', student.cohort())
end

def test_set_new_name()
  student = Student.new('Ahmed', 'E33')
  student.set_new_name('Michael')
  assert_equal('Michael', student.name())
end

def test_set_new_cohort()
  student = Student.new('Michael', 'E33')
  student.set_new_cohort('E01')
  assert_equal('E01', student.cohort())
end

def test_student_to_talk()
  student = Student.new('Michael', 'E33')
  student.speak()
  assert_equal('HEY GUYS!!! I CAN TALK!!!', student.speak())
end

def test_student_favourite_programming_language()
  student = Student.new('Ahmed', 'E33')
  assert_equal('I love Ruby', student.favourite_programming_language('Ruby'))
end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../homework_classes')

class TestStudent <MiniTest::Test

  def test_student_name
    student = Student.new('Ross', 'E33')
    assert_equal('Ross', student.student_name())
  end

  def test_cohort
    student = Student.new('Ross', 'E33')
    assert_equal('E33', student.cohort)
  end

  def test_set_student_name
    student = Student.new('Ross', 'E33')
    student.set_student_name('Ross McKay')
    assert_equal('Ross McKay', student.student_name())
  end

end

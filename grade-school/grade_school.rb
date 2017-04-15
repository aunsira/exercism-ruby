class School

  VERSION = 1
  attr_reader :students

  def initialize
    @students = Hash.new{|h,v| h[v] = []}
  end

  def to_h
    students.sort.to_h
  end

  def add(student, grade)
    students[grade] << student
    students[grade].sort!
  end

  def grade(grade)
    students[grade]
  end
end
module StudentsHelper
  def average_age
    students = Student.all
    total_age = students.pluck(:age).map(&:to_i).sum
    total_age / students.length.to_f
  end
end

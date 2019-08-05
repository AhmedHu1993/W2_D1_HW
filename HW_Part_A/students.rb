class Student

  def initialize(student_name, cohort)
    @name = student_name
    @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_new_name(new_name)
    @name = new_name
  end

  def set_new_cohort(new_cohort)
    @cohort = new_cohort
  end

  def speak()
    return 'HEY GUYS!!! I CAN TALK!!!'
  end

  def favourite_programming_language(language)
    return "I love #{language}"
  end

end

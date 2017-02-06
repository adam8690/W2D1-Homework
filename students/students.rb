class Student
  def initialize(name, cohort, phrase)
    @name = name
    @cohort = cohort
  end
attr_accessor :name, :cohort

def get_name
return name
end

def get_cohort
  return cohort
end

def set_cohort(cohort)
  return cohort = cohort
end

def talk
  return "Hello I am talking"
end

def fav_lang(language)
  return "I love #{language}"
end

end
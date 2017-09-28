class Student < ApplicationRecord

  belongs_to :frat
  validates :name, presence: true
  validates :grade, presence: true
  validates :grade, inclusion: { in: 9..12 }
  validate :student_checker
  validate :frat_name_checker


    attr_reader :frat_name


  def frat_name_checker
    if self.frat.name.split.size != 3
      self.errors[:name] << "Must be three words!"
    end
  end

  def student_checker
    if self.name == "Dave"
      self.errors[:name] << "You're too cool and too much of an independent thinker for a frat."
    end
  end

  def frat_name=(name)
    self.frat = Frat.find_or_create_by(name: name)
  end

end

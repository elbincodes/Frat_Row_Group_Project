class Frat < ApplicationRecord

  has_many :students

  validates :name, presence: true, uniqueness: true
  validate :frat_name_checker

  def frat_name_checker
    if self.name.split.size != 3
      self.errors[:name] << "Must be three words!"
    end
  end

end

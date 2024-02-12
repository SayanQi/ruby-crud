class Student < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :address, presence: true
  validates :school, presence: true
  validates :phone, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :medium, presence: true
end

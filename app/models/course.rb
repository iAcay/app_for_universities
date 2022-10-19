class Course < ApplicationRecord

  validates :short_name, :name, :description, presence: true
  validates :short_name, :name, uniqueness: { case_sensitive: false }

  has_many :student_courses
  has_many :students, through: :student_courses
end

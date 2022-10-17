class Course < ApplicationRecord

  validates :short_name, :name, :description, presence: true
  validates :short_name, :name, uniqueness: { case_sensitive: false }
end

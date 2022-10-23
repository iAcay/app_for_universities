class Course < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings do
    mappings dynamic: false do
      indexes :short_name, type: :text, analyzer: :english
      indexes :name, type: :text, analyzer: :english
      indexes :description, type: :text, analyzer: :english
    end
  end

  validates :short_name, :name, :description, presence: true
  validates :short_name, :name, uniqueness: { case_sensitive: false }

  has_many :student_courses
  has_many :students, through: :student_courses
end

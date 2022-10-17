class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :short_name, null: false, index: { unique: true }
      t.string :name, null: false, index: { unique: true }
      t.text :description, null: false
      
      t.timestamps
    end
  end
end

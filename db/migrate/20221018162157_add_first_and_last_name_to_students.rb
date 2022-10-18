class AddFirstAndLastNameToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :first_name, :string, null: false, default: 'First Name'
    add_column :students, :last_name, :string, null: false, default: 'Last Name'
  end
end

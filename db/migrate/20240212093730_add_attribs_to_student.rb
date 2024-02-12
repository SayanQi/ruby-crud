class AddAttribsToStudent < ActiveRecord::Migration[7.1]
  def up
    add_column :students, :email, :string
    add_column :students, :phone, :integer
    add_column :students, :school, :string
    add_column :students, :medium, :string
    add_column :students, :class, :string
  end

  def def down
    remove_column :students, :email, :string
    remove_column :students, :phone, :integer
    remove_column :students, :school, :string
    remove_column :students, :medium, :string
    remove_column :students, :class, :string
  end
end

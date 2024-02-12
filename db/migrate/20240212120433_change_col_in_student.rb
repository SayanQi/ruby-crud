class ChangeColInStudent < ActiveRecord::Migration[7.1]
  def change
    reversible do |dir|
      dir.up do
        add_column :students, :std, :integer, :limit => 4 #By default SQL String limit 255 character
        #Ex:- :limit => 40
        change_column :students, :phone, :bigint
      end

      dir.down do
        remove_column :students, :std, :string
        change_column :students, :phone, :integer
      end
    end
  end
end

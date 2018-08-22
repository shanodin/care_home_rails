class AddAgeToResidents < ActiveRecord::Migration[5.2]
  def change
    add_column :residents, :age, :integer
  end
end

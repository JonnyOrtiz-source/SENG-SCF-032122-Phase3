class UpdateBirthdateType < ActiveRecord::Migration[6.1]
  def change
    change_column :dogs, :birthdate, :datetime
  end
end

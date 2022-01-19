class ChangeEnglishToBooleanInMovie < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :english, 'boolean USING CAST(english as boolean)'
    change_column :movies, :english, :boolean, default: true
  end
end

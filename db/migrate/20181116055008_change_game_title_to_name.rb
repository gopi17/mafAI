class ChangeGameTitleToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :title, :name
  end
end

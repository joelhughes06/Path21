class AddImageColumnToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :image, :binary
  end
end

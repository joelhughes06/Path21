class AddColumnsToPosts < ActiveRecord::Migration
  def change

  	add_column :posts, :visitor_name, :string
  	add_column :posts, :email, :string
  	add_column :posts, :ip, :string

  end
end

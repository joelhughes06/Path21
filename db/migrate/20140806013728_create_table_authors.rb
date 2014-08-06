class CreateTableAuthors < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.boolean :admin
    	t.string :email
    	t.string :ip
    	t.timestamps
    end
  end
end

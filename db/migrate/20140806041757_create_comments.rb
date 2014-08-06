class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :commenter
    	t.string :email
    	t.string :ip
    	t.timestamps
    end
  end
end

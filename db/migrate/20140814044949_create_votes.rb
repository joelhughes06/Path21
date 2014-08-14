class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.column :post_id, :integer  
      t.column :voter_ip, :string      	
      t.timestamps
    end
  end
end

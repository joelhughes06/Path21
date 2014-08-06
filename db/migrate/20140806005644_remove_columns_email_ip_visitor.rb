class RemoveColumnsEmailIpVisitor < ActiveRecord::Migration
  def change

  	rename_column :posts, :visitor_name, :author

  end
end

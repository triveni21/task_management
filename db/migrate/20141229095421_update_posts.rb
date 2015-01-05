class UpdatePosts < ActiveRecord::Migration
  def up
  	add_column :posts, :estimated_time, :integer
  	add_column :posts, :start_time, :datetime
  	add_column :posts, :end_time, :datetime
  end

  def down
  	remove_column :posts, :estimated_time
  	remove_column :posts, :start_time
  	remove_column :posts, :end_time
  end
end

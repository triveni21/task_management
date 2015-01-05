class Post < ActiveRecord::Base
  attr_accessible :content, :title, :estimated_time, :start_time, :end_time

  after_save :ss
  def ss
    p "sssssssssss"
    p self
    self.update_column(:start_time ,Time.now)
  end
end

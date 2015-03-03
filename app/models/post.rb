# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  name           :string
#  category       :string
#  quantity       :integer
#  description    :text
#  seed_harvested :datetime
#  tested         :boolean
#  user_id        :integer
#  variety_id     :integer
#

class Post < ActiveRecord::Base

  def variety
    Variety.find(variety_id)
  end

  def user
    User.where(id: user_id).first
  end

  def comments
    Comment.where(post_id: self.id)
  end

end

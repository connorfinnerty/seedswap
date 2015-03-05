# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :text
#  post_id     :integer
#  user_id     :integer
#

class Comment < ActiveRecord::Base

  def user
    User.where(id: user_id).first
  end

  def comments
    Comment.where(post_id: self.id)
  end

  def post
    Post.where(id: post_id).first
  end

end

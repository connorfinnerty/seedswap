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
end

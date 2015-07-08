# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string
#  location               :string
#  role                   :string
#

class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :requests, through: :posts

  def user_request(post)
    Request.create(user_id: self.id, post_id: post.id)
  end

  def user_undo_request(post)
    Request.where(user_id: current_user.id, post_id: post.id).destroy
  end

  def requesting?(post)
    Request.where(user_id: self.id, post_id: post[:post_id])
  end

 # TODO: This is not working
  def can_request?(post)
    post[:post_id] != posts
  end

end

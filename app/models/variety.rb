# == Schema Information
#
# Table name: varieties
#
#  id          :integer          not null, primary key
#  species     :string
#  genus       :string
#  variety     :string
#  common_name :string
#

class Variety < ActiveRecord::Base
end

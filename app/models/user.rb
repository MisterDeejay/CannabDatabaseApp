# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  full_name       :string           not null
#  email           :string           not null
#  username        :string
#  session_token   :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
	validates :email, :email => true
end

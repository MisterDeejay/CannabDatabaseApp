# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  article_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ActiveRecord::Base
end

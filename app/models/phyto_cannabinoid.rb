# == Schema Information
#
# Table name: phyto_cannabinoids
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  taggable_id   :integer
#  taggable_type :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class PhytoCannabinoid < ActiveRecord::Base
end

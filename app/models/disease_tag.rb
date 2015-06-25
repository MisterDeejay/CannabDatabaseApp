# == Schema Information
#
# Table name: disease_tags
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  taggable_id   :integer
#  taggable_type :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class DiseaseTag < ActiveRecord::Base
end

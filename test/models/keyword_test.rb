# == Schema Information
#
# Table name: keywords
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  taggable_id   :integer
#  taggable_type :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class KeywordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

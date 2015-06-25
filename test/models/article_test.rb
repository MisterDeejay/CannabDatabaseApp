# == Schema Information
#
# Table name: articles
#
#  id              :integer          not null, primary key
#  title           :text             not null
#  journal_id      :integer
#  volume          :string
#  issue           :string
#  date_published  :date
#  article_url     :text
#  dosage_included :boolean
#  dosage_amt      :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

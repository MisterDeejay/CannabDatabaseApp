module Taggable
	extend ActiveSupport::Concern

	included do
		has_many :taggings, as: :taggable, dependent: :destroy
		has_many :tags, through: :taggable
	end

	def tag_names
		tags.map(&:name)
	end
end

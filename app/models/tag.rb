class Tag < ActiveRecord::Base
  has_many :taggings

  has_many :keywords, through: :taggings, source: :taggable, source_type: Keyword
	has_many :phyto_cannabinoids, through: :taggings, source: :taggable, source_type: PhytoCannabinoid
	has_many :disease_tags, through: :taggings, source: :taggable, source_type: DiseaseTag
end

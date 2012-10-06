class Report < ActiveRecord::Base
  include Extensions::UUID
  belongs_to :inspector
  belongs_to :list
#  has_many :answers
  attr_accessible :inspector, :inspector_id, :list, :list_id#, :answers_attributes
  # attr_accessible :title, :body
  accepts_nested_attributes_for :answers
end

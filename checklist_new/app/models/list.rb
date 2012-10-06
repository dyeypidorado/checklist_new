class List < ActiveRecord::Base
  include Extensions::UUID
  attr_accessible :description, :name
  attr_accessible :admin_id, :list_item_ids

  belongs_to :admin
  has_many :list_items
  has_many :reports

  accepts_nested_attributes_for :reports
end

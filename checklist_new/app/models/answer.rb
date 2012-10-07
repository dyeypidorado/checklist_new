class Answer < ActiveRecord::Base
  include Extensions::UUID
  belongs_to :reports
  belongs_to :list_item
  belongs_to :inspector
  attr_accessible :value, :list_item_id, :inspector_id, :inspector, :list_item
end

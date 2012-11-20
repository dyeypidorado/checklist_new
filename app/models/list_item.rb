class ListItem < ActiveRecord::Base
  include Extensions::UUID
  attr_accessible :description, :title, :answer_kind, :selection
  attr_accessible :list_id
  belongs_to :list
  serialize :selection

  def answer_kind_enum
    ['yes/no','longtext','selection', 'checkbox']
  end
end

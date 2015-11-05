class Item < ActiveRecord::Base
  belongs_to :list
  acts_as_list scope: :list
  validates :content, :presence => true
end

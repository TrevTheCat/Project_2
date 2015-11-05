class List < ActiveRecord::Base
  has_and_belongs_to_many :categories
  belongs_to :user
  has_many :items, -> { order(position: :asc) }
  accepts_nested_attributes_for :items, allow_destroy: true, :reject_if => nil
end

class Category < ActiveRecord::Base
  has_and_belongs_to_many :lists, dependent: :destroy
  validates :name, :uniqueness => true
end

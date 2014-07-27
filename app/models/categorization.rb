class Categorization < ActiveRecord::Base

  validates_presence_of :category
  belongs_to :kitten
  belongs_to :category
end

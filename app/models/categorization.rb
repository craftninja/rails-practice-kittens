class Categorization < ActiveRecord::Base

  validates_presence_of :category
  validates_uniqueness_of :category, :scope => :kitten
  belongs_to :kitten
  belongs_to :category
end

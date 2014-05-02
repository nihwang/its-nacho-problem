class Recipe < ActiveRecord::Base
  serialize :components
  attr_accessible :components

  validates_presence_of :name, :recipe_url, :components
  validates_uniqueness_of :name, :recipe_url
end
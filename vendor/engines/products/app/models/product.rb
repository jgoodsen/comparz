class Product < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :best_for, :brief_summary, :detailed_review]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :logo, :class_name => 'Image'
end

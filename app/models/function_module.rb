class FunctionModule < ActiveRecord::Base
  has_and_belongs_to_many :testplans
  attr_accessible :module_name
end

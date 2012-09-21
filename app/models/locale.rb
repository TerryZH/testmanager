class Locale < ActiveRecord::Base
  has_and_belongs_to_many :testplans
  attr_accessible :locale_name
end

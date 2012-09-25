class Locale < ActiveRecord::Base
  has_and_belongs_to_many :testplans
  attr_accessible :locale_name

  def name
    return locale_name
  end
end

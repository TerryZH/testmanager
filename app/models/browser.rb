class Browser < ActiveRecord::Base
  has_many :testcases
  
  attr_accessible :browser_core, :browser_family, :browser_version
  
  def name
    return browser_family + " - " + browser_version + " (" + browser_core + ")"
  end
end

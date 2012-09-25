class Task < ActiveRecord::Base
  has_many :testplans
  attr_accessible :desc, :end_date_actual, :end_date_planned, :name, :start_date_actual, :start_date_planned
end

class Testplan < ActiveRecord::Base
  belongs_to :user

  has_and_belongs_to_many :testcases

  attr_accessible :name, :desc, :user_id, :end_date_actual, :end_date_planned, :start_date_actual, :start_date_planned, :original_estimation, :logged_time, :testcase_ids
end

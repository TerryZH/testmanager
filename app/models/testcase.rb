class Testcase < ActiveRecord::Base
  belongs_to :user

  has_and_belongs_to_many :testplans
  has_many :test_results

  has_and_belongs_to_many :locales
  has_and_belongs_to_many :function_modules

  attr_accessible :selected, :automated, :expected_results, :repro_steps, :title, :effort_estimation, :user_id, :locale_ids, :function_module_ids
end

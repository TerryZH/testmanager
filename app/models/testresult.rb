class Testresult < ActiveRecord::Base
  belongs_to :user
  belongs_to :testcase
  belongs_to :testplan
  belongs_to :locale
  belongs_to :browser
  
  has_and_belongs_to_many :fail_bugs
  has_and_belongs_to_many :block_bugs

  attr_accessible :comments, :test_result, :user_id, :testcase_id, :testplan_id, :locale_id, :browser_id
end

class Testresult < ActiveRecord::Base
  belongs_to :user
  belongs_to :testcase
  belongs_to :testplan
  belongs_to :locale
  belongs_to :browser
  
  has_and_belongs_to_many :bugs
  has_and_belongs_to_many :blockers

  attr_accessible :comments, :test_result, :env, :user_id, :testcase_id, :testplan_id, :locale_id, :browser_id, :bug_ids, :blocker_ids
end

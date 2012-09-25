class Testplan < ActiveRecord::Base
  belongs_to :user
  belongs_to :task

  has_and_belongs_to_many :testcases
  has_and_belongs_to_many :locales

  has_many :testresults

  attr_accessible :name, :desc, :user_id, :task_id, :end_date_actual, :end_date_planned, :start_date_actual, :start_date_planned, :original_estimation, :logged_time, :testcase_ids, :locale_ids

  #
  def add_test_results(params)
    params[:testcase_ids].each do |testcase_id|
      @testresult = Testresult.new({
        :comments => params[:comments],
        :test_result => params[:test_result],
        :user_id => params[:user_id],
        :testcase_id => testcase_id,
        :testplan_id => params[:id],
        :locale_id => params[:locale_id],
        :browser_id => params[:browser_id],
        :bug_ids => params[:bug_ids],
        :blocker_ids => params[:blocker_ids]
        })
      @testresult.save
    end
  end
  
  #
  def completion_rate
    return rand(50)+50
  end
  
  #
  def pass_rate
    return rand(50)
  end
  
  #
  def find_result (testcase_id, locale_id)
    testresults.find(:last, :order => "id", :conditions => ["testcase_id=? and locale_id=?", testcase_id, locale_id])
  end
end

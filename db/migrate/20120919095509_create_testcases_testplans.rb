class CreateTestcasesTestplans < ActiveRecord::Migration
  def change
    create_table :testcases_testplans, :id => false do |t|
      t.integer :testcase_id
      t.integer :testplan_id
    end
  end
end

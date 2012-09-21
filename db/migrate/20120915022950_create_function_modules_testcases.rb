class CreateFunctionModulesTestcases < ActiveRecord::Migration
  def change
    create_table :function_modules_testcases, :id => false do |t|
      t.integer :function_module_id
      t.integer :testcase_id
    end
  end
end

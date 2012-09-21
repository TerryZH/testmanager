class CreateTestresults < ActiveRecord::Migration
  def change
    create_table :testresults do |t|
      t.references :user
      t.references :testplan
      t.references :testcase
      t.references :locale
      t.references :browser

      t.string :test_result
      t.string :comments

      t.timestamps
    end
    add_index :testresults, :user_id
    add_index :testresults, :testplan_id
    add_index :testresults, :testcase_id
    add_index :testresults, :locale_id
    add_index :testresults, :browser_id
  end
end

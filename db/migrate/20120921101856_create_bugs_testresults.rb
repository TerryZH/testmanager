class CreateBugsTestresults < ActiveRecord::Migration
  def change
    create_table :bugs_testresults, :id => false do |t|
      t.integer :bug_id
      t.integer :testresult_id
    end
  end
end

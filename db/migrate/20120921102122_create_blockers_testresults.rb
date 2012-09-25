class CreateBlockersTestresults < ActiveRecord::Migration
  def change
    create_table :blockers_testresults, :id => false do |t|
      t.integer :blocker_id
      t.integer :testresult_id
    end
  end
end

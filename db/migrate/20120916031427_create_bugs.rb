class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :bugs_id
    end
  end
end

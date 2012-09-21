class CreateBlockers < ActiveRecord::Migration
  def change
    create_table :blockers do |t|
      t.string :blockers_id

      t.timestamps
    end
  end
end

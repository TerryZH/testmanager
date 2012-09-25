class CreateBlockers < ActiveRecord::Migration
  def change
    create_table :blockers do |t|
      t.string :blockers_id
    end
  end
end

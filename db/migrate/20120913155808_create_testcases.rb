class CreateTestcases < ActiveRecord::Migration
  def change
    create_table :testcases do |t|
      t.references :user

      t.integer :priority
      t.string :title
      t.string :repro_steps
      t.string :expected_results
      t.boolean :automated
      t.datetime :effort_estimation

      t.timestamps
    end
    add_index :testcases, :user_id
  end
end

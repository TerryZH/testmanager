class CreateTestplans < ActiveRecord::Migration
  def change
    create_table :testplans do |t|
      t.references :user
      t.references :task

      t.string :name
      t.string :desc
      t.datetime :start_date_planned
      t.datetime :end_date_planned
      t.datetime :start_date_actual
      t.datetime :end_date_actual
      t.datetime :original_estimation
      t.datetime :logged_time

      t.timestamps
    end
    add_index :testplans, :user_id, :task_id
  end
end

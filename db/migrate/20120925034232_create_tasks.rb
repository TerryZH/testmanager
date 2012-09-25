class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :desc
      t.date :start_date_planned
      t.date :start_date_actual
      t.date :end_date_planned
      t.date :end_date_actual

      t.timestamps
    end
  end
end

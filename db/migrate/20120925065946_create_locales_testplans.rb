class CreateLocalesTestplans < ActiveRecord::Migration
  def change
    create_table :locales_testplans, :id => false do |t|
      t.integer :locale_id
      t.integer :testplan_id
    end
  end
end

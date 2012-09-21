class CreateLocalesTestcases < ActiveRecord::Migration
  def change
    create_table :locales_testcases, :id => false do |t|
      t.integer :locale_id
      t.integer :testcase_id
    end
  end
end

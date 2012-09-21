class CreateBrowsers < ActiveRecord::Migration
  def change
    create_table :browsers do |t|
      t.string :browser_core
      t.string :browser_family
      t.string :browser_version
    end
  end
end

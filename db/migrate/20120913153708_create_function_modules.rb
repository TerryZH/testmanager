class CreateFunctionModules < ActiveRecord::Migration
  def change
    create_table :function_modules do |t|
      t.string :module_name
    end
  end
end

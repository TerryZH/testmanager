class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :locale_name
    end
  end
end

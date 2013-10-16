class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string  :city_name
      t.string  :flag_image
      t.string  :time_zone
      t.integer :population
    end
  end
end

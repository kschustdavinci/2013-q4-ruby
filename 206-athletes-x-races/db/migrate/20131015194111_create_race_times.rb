class CreateRaceTimes < ActiveRecord::Migration
  def change
    create_table :race_times do |t|
      t.string  :person_name
      t.integer :time_100_m
      t.integer :time_10_k
      t.integer :time_400_m
    end
  end
end

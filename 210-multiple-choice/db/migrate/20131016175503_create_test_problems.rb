class CreateTestProblems < ActiveRecord::Migration
  def change
    create_table :test_problems do |t|
      t.integer :problem_number
      t.string  :question
      t.string  :solution_a
      t.string  :solution_b
      t.string  :solution_c
      t.string  :solution_d
    end
  end
end

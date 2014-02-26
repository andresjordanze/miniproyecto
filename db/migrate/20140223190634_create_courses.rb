class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :final_evaluation
      t.integer :continuous_evaluation
      t.integer :gestion
      t.timestamps
    end
  end
end

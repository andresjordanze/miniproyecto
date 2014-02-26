class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :final_evaluation
      t.integer :continuous_evaluation
      t.integer :gestion
      t.integer :user_id
      t.timestamps
    end
  end
end

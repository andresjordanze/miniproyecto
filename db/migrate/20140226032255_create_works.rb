class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string   :name
      t.integer  :nota_total
      t.integer  :nota
      t.references :evaluation

      t.timestamps
    end
    add_index :works, :evaluation_id
  end
end

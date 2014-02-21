class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.integer	:nota_total
      t.integer :nota
      t.timestamps
    end
  end
end

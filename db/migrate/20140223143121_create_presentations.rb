class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
    	t.string :name
      t.integer :porcentaje_nota
      t.integer :nota
      t.references :work
      t.timestamps
    end
    add_index :presentations, :work_id
  end
end

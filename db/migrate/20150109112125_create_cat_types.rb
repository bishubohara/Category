class CreateCatTypes < ActiveRecord::Migration
  def change
    create_table :cat_types do |t|
      t.string :name
      t.text :origin
      t.text :speciality
      t.references :recipe

      t.timestamps
    end
    add_index :cat_types, :recipe_id
  end
end

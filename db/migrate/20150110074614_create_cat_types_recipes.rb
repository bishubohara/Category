class CreateCatTypesRecipes < ActiveRecord::Migration
  def up
    create_table :cat_types_recipes, :id => false do |t|
        t.references :cat_type
        t.references :recipe
    end
    add_index :cat_types_recipes, [:cat_type_id, :recipe_id]
    add_index :cat_types_recipes, :recipe_id
  end

  def down
    drop_table :cat_types_recipes
  end

end

class CreateCategoriesListsJoinTable < ActiveRecord::Migration
  def change
    create_table :categories_lists, id: false do |t|
      t.integer :category_id
      t.integer :list_id
    end
  end
end

class DropTableCategories < ActiveRecord::Migration
  def up
    drop_table :categories_s
  end
  def down
    raiseActiveRecord::IrreveribleMigration
    
  end
end

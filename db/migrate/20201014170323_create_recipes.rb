class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.column(:name, :string)
      t.column(:rating, :integer)
      t.column(:instructions, :string)
      t.column(:tag, :string)
    end
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :person, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :people
  end
end

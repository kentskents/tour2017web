class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :kind
      t.string :sex
      t.string :age
      t.string :size
      t.string :color
      t.string :place
      t.date :limit
      t.text :detail
      t.string :image

      t.timestamps
    end
  end
end

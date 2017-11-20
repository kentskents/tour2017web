class CreatePastCats < ActiveRecord::Migration[5.1]
  def change
    create_table :past_cats do |t|
      t.references :cat, foreign_key: true
      t.string :whereabouts

      t.timestamps
    end
  end
end

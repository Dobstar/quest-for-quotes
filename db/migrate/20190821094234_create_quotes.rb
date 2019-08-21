class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :like
      t.string :image

      t.timestamps
    end
  end
end

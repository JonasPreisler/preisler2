class Portfolio < ActiveRecord::Migration[5.0]
  def change

    create_table :portfolios do |t|
      t.string :name
      t.text :description
      t.integer :image
      t.string :link
    end
  end
end

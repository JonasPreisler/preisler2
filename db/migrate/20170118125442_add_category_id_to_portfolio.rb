class AddCategoryIdToPortfolio < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :category_id, :integer
  end
end

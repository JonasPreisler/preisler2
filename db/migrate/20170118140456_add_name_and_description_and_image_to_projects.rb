class AddNameAndDescriptionAndImageToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :name, :string
    add_column :projects, :description, :text
    add_column :projects, :image, :integer
  end
end

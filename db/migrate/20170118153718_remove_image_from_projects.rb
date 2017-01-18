class RemoveImageFromProjects < ActiveRecord::Migration[5.0]
  def up
    remove_column :projects, :image
  end
  def down
    add_column :projects, :image, :integer
  end
end

class RemoveCategoryFromScholarship < ActiveRecord::Migration[6.0]
  def change
    remove_column :scholarships, :category, :string
  end
end

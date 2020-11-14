class AddStatusToScholarships < ActiveRecord::Migration[6.0]
  def change
    add_column :scholarships, :status, :boolean
  end
end

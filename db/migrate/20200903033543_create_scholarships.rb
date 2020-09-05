class CreateScholarships < ActiveRecord::Migration[6.0]
  def change
    create_table :scholarships do |t|
      t.string :title
      t.text :description
      t.date :start
      t.date :end
      t.string :source
      t.string :category
      t.text :benefits

      t.timestamps
    end
  end
end

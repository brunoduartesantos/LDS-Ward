class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.references :ward, foreign_key: true
      t.string :title
      t.string :summary
      t.string :post
      t.string :publication

      t.timestamps
    end
  end
end

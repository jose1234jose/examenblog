class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :descrition
      t.integer :like
      t.integer :post_id
      t.references :post, index: true

      t.timestamps
    end
  end
end

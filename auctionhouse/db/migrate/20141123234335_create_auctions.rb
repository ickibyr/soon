class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :item
      t.text :desc
      t.integer :bid

      t.timestamps
    end
  end
end

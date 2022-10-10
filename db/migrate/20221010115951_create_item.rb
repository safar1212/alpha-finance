class CreateItem < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :amount

      t.timestamps
    end
  end
end

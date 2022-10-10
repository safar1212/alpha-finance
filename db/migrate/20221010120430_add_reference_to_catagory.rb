class AddReferenceToCatagory < ActiveRecord::Migration[7.0]
  def change
    add_reference :catagories, :user, null: false, foreign_key: true
  end
end

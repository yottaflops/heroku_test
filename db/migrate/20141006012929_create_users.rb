class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :zipcode

      t.timestamps
    end
  end
end

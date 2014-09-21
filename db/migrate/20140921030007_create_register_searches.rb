class CreateRegisterSearches < ActiveRecord::Migration
  def change
    create_table :register_searches do |t|
      t.string :term

      t.timestamps
    end
  end
end

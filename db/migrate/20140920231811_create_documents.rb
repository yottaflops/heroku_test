class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :document_number
      t.text :excerpts
      t.string :html_url
      t.string :document_type
      t.text :title
      t.integer :register_search_id

      t.timestamps
    end
  end
end

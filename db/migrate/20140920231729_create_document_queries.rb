class CreateDocumentQueries < ActiveRecord::Migration
  def change
    create_table :document_queries do |t|
      t.string :term

      t.timestamps
    end
  end
end

class AddDocumentSectionToClientDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :client_documents, :document_section, :string
  end
end

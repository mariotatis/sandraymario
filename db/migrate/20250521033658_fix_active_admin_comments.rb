class FixActiveAdminComments < ActiveRecord::Migration[7.2]
  def change
    # Drop the table if it exists (to avoid conflicts with the old migration)
    drop_table :active_admin_comments if table_exists?(:active_admin_comments)
    
    # Create the table with the correct structure for ActiveAdmin 3.x
    create_table :active_admin_comments do |t|
      t.string :namespace
      t.text   :body
      t.references :resource, polymorphic: true, null: false
      t.references :author, polymorphic: true
      t.timestamps
    end
    
    add_index :active_admin_comments, [:namespace]
    add_index :active_admin_comments, [:resource_type, :resource_id]
  end
  
  private
  
  def table_exists?(table_name)
    ActiveRecord::Base.connection.table_exists?(table_name)
  end
end

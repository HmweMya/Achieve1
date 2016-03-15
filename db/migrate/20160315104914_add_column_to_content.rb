class AddColumnToContent < ActiveRecord::Migration
  def change
    add_column :contents, :name, :string
    add_column :contents, :email, :string
    add_column :contents, :title, :string
    add_column :contents, :content, :text
  end
end

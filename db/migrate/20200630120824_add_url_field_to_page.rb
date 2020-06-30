class AddUrlFieldToPage < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :url, :string
  end
end

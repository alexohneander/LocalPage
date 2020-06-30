class AddWebsiteIdToPage < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :website_id, :integer
  end
end

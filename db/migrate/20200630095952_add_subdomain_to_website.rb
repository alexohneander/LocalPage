class AddSubdomainToWebsite < ActiveRecord::Migration[6.0]
  def change
    add_column :websites, :subdomain, :string
  end
end

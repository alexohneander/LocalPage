class CreateWebsites < ActiveRecord::Migration[6.0]
  def change
    create_table :websites do |t|
      t.string :domain
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end

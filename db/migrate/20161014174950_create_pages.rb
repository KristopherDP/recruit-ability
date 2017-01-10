class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :scrape_categories
    end
  end
end

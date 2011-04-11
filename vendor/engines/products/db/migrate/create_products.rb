class CreateProducts < ActiveRecord::Migration

  def self.up
    create_table :products do |t|
      t.integer :logo_id
      t.string :name
      t.string :best_for
      t.text :brief_summary
      t.text :detailed_review
      t.integer :position

      t.timestamps
    end

    add_index :products, :id

    load(Rails.root.join('db', 'seeds', 'products.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "products"})

    Page.delete_all({:link_url => "/products"})

    drop_table :products
  end

end

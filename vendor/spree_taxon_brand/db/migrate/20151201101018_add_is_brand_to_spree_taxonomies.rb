class AddIsBrandToSpreeTaxonomies < ActiveRecord::Migration
  def change
    add_column :spree_taxonomies, :is_brand, :boolean, :default => false
  end
end

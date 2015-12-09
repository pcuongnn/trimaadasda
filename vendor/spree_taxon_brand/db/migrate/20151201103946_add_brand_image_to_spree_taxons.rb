class AddBrandImageToSpreeTaxons < ActiveRecord::Migration
  def change
    add_attachment :spree_taxons, :brand_image
  end
end

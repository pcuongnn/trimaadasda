class AddImageAndBannerToSpreeTaxons < ActiveRecord::Migration
  def change
    add_attachment :spree_taxons, :image
    add_attachment :spree_taxons, :banner
  end
end

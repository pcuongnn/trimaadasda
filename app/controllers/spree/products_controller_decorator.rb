Spree::ProductsController.class_eval do
  def show_taxon
  	@products_categories = Spree::Taxon.where(parent_id: 1)
  	@taxon = Spree::Taxon.find(params[:id])
  	@products = @taxon.products
  
  end

  def show_taxons
    @taxonomies = Spree::Taxon.find(params[:id])
    @taxons = Spree::Taxon.where(parent_id: @taxonomies)
  end
end
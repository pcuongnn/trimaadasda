Spree::ProductsController.class_eval do
  def categories
  	@products_categories = Spree::Taxon.where(parent_id: 1)
  end

  def categories1
  	
  end

  def show_taxon
  	@products_categories = Spree::Taxon.where(parent_id: 1)
  	@taxon = Spree::Taxon.find(params[:id])
  	@products = @taxon.products
  end
end
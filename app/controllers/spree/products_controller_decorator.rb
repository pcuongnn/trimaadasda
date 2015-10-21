Spree::ProductsController.class_eval do
  def categories
  	@products_categories = Spree::Taxon.where(parent_id: 1)
  end

  def categories1
  	
  end
end
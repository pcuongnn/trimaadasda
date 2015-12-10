Spree::TaxonsController.class_eval do
    before_action :get_brands, :only => [:show]

    def get_brands
      taxonomies = Spree::Taxonomy.brand
      @group_taxonomies = []
      i = 0
      @sub_taxonomies = []
      taxonomies.each_with_index do |brand, index|
        @sub_taxonomies = [] if i == 0
        @sub_taxonomies.push brand
        @group_taxonomies.push(@sub_taxonomies) if index == (taxonomies.length - 1) || i == 1
        i = (i == 1) ? 0 : i + 1
      end
    end

    def show
      @taxon = Spree::Taxon.friendly.find(params[:id])
      @products_categories = Spree::Taxon.where(parent_id: @taxon.parent_id)
      return unless @taxon
      curr_page = params[:page] || 1
      per_page = params[:per_page] || Spree::Config[:products_per_page]
      @taxonomies = Spree::Taxonomy.unbrand.includes(root: :children)

      @children_taxons = @taxon.children.page(curr_page).per(per_page)
      return @children_taxons if @children_taxons.any?

      @searcher = build_searcher(params.merge(taxon: @taxon.id, include_images: true,
                                              min_price: params[:min_price],
                                              max_price: params[:max_price],
                                              sortby: params[:sortby]
                                 ))
      @products = @searcher.retrieve_products

      respond_to do |format|
        format.html
        format.js
      end
    end	
end
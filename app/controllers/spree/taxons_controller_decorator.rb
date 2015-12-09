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
	
end
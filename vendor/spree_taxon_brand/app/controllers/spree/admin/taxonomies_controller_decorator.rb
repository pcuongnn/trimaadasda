module Spree
  module Admin
    TaxonomiesController.class_eval do
      def toggle_brand
        @taxonomy.is_brand ? @taxonomy.unbrand! : @taxonomy.brand! if @taxonomy.present?
        render :nothing => true, :status => 200, :content_type => 'text/html'
      end
    end
  end
end
Spree::HomeController.class_eval do
    before_action :get_slides, only: [:index]    
    def get_slides
      @slides = Spree::Slide.published
    end
	def contactus
	end

	def aboutus
	end    
end
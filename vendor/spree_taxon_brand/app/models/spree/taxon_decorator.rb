module Spree
  Taxon.class_eval do
    has_attached_file :brand_image, :styles => { :thumb => "100x" },
                      # :default_url => "",
                      :url => "/uploads/:class/:id/brand_images/:basename-:style.:extension",
                      :path => ":rails_root/public/uploads/:class/:id/brand_images/:basename-:style.:extension",
                      :convert_options => {
                          :all => '-strip'
                          # :thumb => Proc.new { |instance| instance.image_thumb_dimension }
                      }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    # def image_thumb_dimension
    #   dimensions = Paperclip::Geometry.from_file(image.queued_for_write[:original].path)
    #   crop_side = dimensions.width > dimensions.height ?  dimensions.height : dimensions.width
    #   "-gravity center -crop #{crop_side}x#{crop_side}+0+0 -resize 300x300!"
    # end

    def brand_image_url(style=:original)
      brand_image.present? ? brand_image(style) : ""
    end
  end
end
module Spree
  Taxon.class_eval do
    has_attached_file :image, :styles => { :thumb => "100x" },
                      # :default_url => "",
                      :url => "/uploads/:class/:id/images/:basename-:style.:extension",
                      :path => ":rails_root/public/uploads/:class/:id/images/:basename-:style.:extension",
                      :convert_options => {
                          :all => '-strip'
                          # :thumb => Proc.new { |instance| instance.image_thumb_dimension }
                      }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    has_attached_file :banner, :styles => { :thumb => "100x" },
                      # :default_url => ActionController::Base.helpers.image_path(""),
                      :url => "/uploads/:class/:id/banners/:basename-:style.:extension",
                      :path => ":rails_root/public/uploads/:class/:id/banners/:basename-:style.:extension",
                      :convert_options => {
                          :all => '-strip'
                      }
    validates_attachment_content_type :banner, :content_type => /\Aimage\/.*\Z/

    # def image_thumb_dimension
    #   dimensions = Paperclip::Geometry.from_file(image.queued_for_write[:original].path)
    #   crop_side = dimensions.width > dimensions.height ?  dimensions.height : dimensions.width
    #   "-gravity center -crop #{crop_side}x#{crop_side}+0+0 -resize 300x300!"
    # end

    def image_url(style=:original)
      image.present? ? image(style) : ""
    end

    def banner_url(style=:original)
      banner.present? ? banner(style) : ""
    end
  end
end
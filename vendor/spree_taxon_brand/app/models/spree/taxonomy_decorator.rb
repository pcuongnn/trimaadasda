module Spree
  Taxonomy.class_eval do
    scope :brand, -> { where("is_brand = ?", true) }
    scope :unbrand, -> { where("is_brand = ?", false) }

    def brand!
      self.update_attribute(:is_brand, true)
    end

    def unbrand!
      self.update_attribute(:is_brand, false)
    end
  end
end
[:brand_image].each do |permit_attr|
  Spree::PermittedAttributes.taxon_attributes << permit_attr
end
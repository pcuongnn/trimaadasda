Deface::Override.new(:virtual_path => 'spree/admin/taxons/_form',
                     :name => 'add_brand_image_to_taxon_edit',
                     :insert_bottom => "div[data-hook='admin_inside_taxon_form']",
                     :partial => "spree/admin/taxons/brand_image_form")
Deface::Override.new(:virtual_path => 'spree/admin/taxons/_form',
                     :name => 'add_image_and_banner_to_taxon_edit',
                     :insert_bottom => "div[data-hook='admin_inside_taxon_form']",
                     :partial => "spree/admin/taxons/image_banner_form")
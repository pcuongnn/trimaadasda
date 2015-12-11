Deface::Override.new(:virtual_path => 'spree/admin/taxonomies/_list',
                     :name => 'add_image_and_banner_to_admin_body_taxonomies_listing',
                     :insert_before => "td.actions",
                     :partial => "spree/admin/taxons/image_banner_body_listing")
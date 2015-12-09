Deface::Override.new(:virtual_path => 'spree/admin/taxonomies/_list',
                     :name => 'add_is_brand_to_admin_body_taxonomies_listing',
                     :insert_before => "td.actions",
                     :partial => "spree/admin/taxonomies/is_brand_body_listing")
Deface::Override.new(:virtual_path => 'spree/admin/taxonomies/_list',
                     :name => 'add_image_and_banner_to_admin_header_taxonomies_listing',
                     :insert_before => "th.actions",
                     :text => "<th>Image</th><th>Banner</th>")
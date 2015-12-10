module Spree
  module FrontendHelper
    def breadcrumbs(taxon, separator="&nbsp;")
      return "" if current_page?("/")
      separator = raw(separator)
      crumbs = [content_tag(:li, link_to(Spree.t(:home), spree.root_path, itemprop: "url"), itemscope: "itemscope", itemtype: "https://schema.org/ListItem", itemprop: "itemListElement")]
      if taxon
        crumbs << taxon.ancestors.collect { |ancestor| content_tag(:li, link_to(ancestor.name, seo_url(ancestor), itemprop: "url"), itemscope: "itemscope", itemtype: "https://schema.org/ListItem", itemprop: "itemListElement") } unless taxon.ancestors.empty?
        crumbs << content_tag(:li, taxon.name, itemscope: "itemscope", itemtype: "https://schema.org/ListItem", itemprop: "itemListElement")
      end
      crumb_list = content_tag(:ul, raw(crumbs.flatten.map{|li| li.mb_chars}.join), class: 'pag', itemscope: "itemscope", itemtype: "https://schema.org/BreadcrumbList")
      content_tag(:section, crumb_list, class: 'col-md-6 text-uppercase')
    end
  end
end  
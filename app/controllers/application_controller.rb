class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_menu_taxons
  def get_menu_taxons
    @menu_taxons = Spree::Taxonomy.unbrand.limit(8).collect(&:root)
  end
end

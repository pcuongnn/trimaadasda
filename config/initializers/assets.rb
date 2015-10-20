# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( spree/frontend/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( spree/frontend/style.min.css )
Rails.application.config.assets.precompile += %w( spree/frontend/owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( spree/frontend/owl.carousel.css )
Rails.application.config.assets.precompile += %w( spree/frontend/lightbox.css )
Rails.application.config.assets.precompile += %w( spree/frontend/lightbox.min.js )
Rails.application.config.assets.precompile += %w( spree/frontend/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( spree/frontend/validator.min.js )
Rails.application.config.assets.precompile += %w( spree/frontend/SmoothScroll.js )
Rails.application.config.assets.precompile += %w( spree/frontend/main.js )
Rails.application.config.assets.precompile += %w( spree/frontend/form.js )
Rails.application.config.assets.precompile += %w( spree/frontend/fontello.css )
Rails.application.config.assets.precompile += %w( spree/frontend/social-f.png )
Rails.application.config.assets.precompile += %w( spree/frontend/social-i.png )
Rails.application.config.assets.precompile += %w( spree/frontend/social-t.png )
Rails.application.config.assets.precompile += %w( spree/frontend/logo.png )
Rails.application.config.assets.precompile += %w( spree/frontend/head-search.png )
Rails.application.config.assets.precompile += %w( spree/frontend/head-card.png )
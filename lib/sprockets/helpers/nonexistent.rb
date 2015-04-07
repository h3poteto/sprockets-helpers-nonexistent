require "sprockets/helpers/nonexistent/version"

require 'sprockets/helpers'

module Sprockets::Helpers::RailsHelper
  def self.stylesheet_link_tag(*sources)
    sources.each do |stylesheet|
      unless stylesheet.kind_of?(Hash)
        raise Sprockets::FileNotFound, "#{stylesheet}.css" if (Rails.env.development? || Rails.env.test?) && asset_paths.asset_for(stylesheet, "css").blank?
      end
    end
    super
  end

  def self.javascript_include_tag(*sources)
    sources.each do |javascript|
      unless javascript.kind_of?(Hash)
        raise Sprockets::FileNotFound, "#{javascript}.js" if (Rails.env.development? || Rails.env.test?) && asset_paths.asset_for(javascript, "js").blank?
      end
    end
    super
  end
end

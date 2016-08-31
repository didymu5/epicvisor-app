class StyleguideController < ApplicationController
  def styleguide
    render template: "style_guide/styleguide.html.erb"
  end
end

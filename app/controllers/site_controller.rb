class SiteController < ApplicationController
  include SiteHelper

  def index
    @website = get_website_from_domain
  end

  def page
    @website = get_website_from_domain
    @page = get_page
  end
end

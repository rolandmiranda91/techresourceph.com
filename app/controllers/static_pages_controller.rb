class StaticPagesController < ApplicationController

  def home
    load_pages
  end

  def about_us
    load_pages
  end

  def services
    load_pages
  end

  def careers
    load_pages
  end

  def contact_us
    load_pages
  end
  private
  def load_pages
    # load the yml
    yml_dir=Rails.root.join("app","data","yml")
    @pages = YAML.load_file("#{yml_dir}/pages.yml")
  end
end

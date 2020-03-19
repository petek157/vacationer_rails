class HomeController < ApplicationController
  layout "application", except: [:businesses]
  layout "home_map", only: [:businesses]

  def index
    @features = Feature.where(published: true).order("position ASC")
  end

  def slides
    sliders = Slider.where(published: true).order('position ASC')
    sls = []
    sliders.each do |s|
      sl = {
        title: s.title,
        subtitle: s.subtitle,
        note: s.note,
        splash: s.splash,
        color: s.color,
        image_url: url_for(s.image.variant(resize_to_fill: [1400, 430]))
      }
      sls << sl
    end
    render json: {sliders: sls}
  end

  def businesses
    businesses = Business.where(published: true).order('category ASC')
    sls = []
    sliders.each do |s|
      sl = {
        title: s.title,
        subtitle: s.subtitle,
        note: s.note,
        splash: s.splash,
        color: s.color,
        image_url: url_for(s.image.variant(resize_to_fill: [1400, 430]))
      }
      sls << sl
    end
    render json: {sliders: sls}
  end
end

class HomeController < ApplicationController
  def index
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
end

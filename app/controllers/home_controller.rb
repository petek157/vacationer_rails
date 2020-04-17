class HomeController < ApplicationController
  layout "application", except: [:businesses]
  layout "home_map", only: [:businesses]

  def index
    @features = Feature.where(published: true).order("position ASC")
    min = AdSet.where(published: true, on_main: true).minimum("views")
    @ad = AdSet.where(published: true, on_main: true, views: min).first
    @ad.views = @ad.views + 1
    @ad.save
    #@ad = ""
  end

  def businesses
    if !params[:cat]
      redirect(root_path)
    else

      ##Set a global model for different setting ei themes##

      @theme = "spring"
      
      cat = params[:cat].gsub(/_/, ' ')
      @businesses = Business.where(category: cat).order('name ASC')

      @ad = AdSet.where(published: true, on_cat: true, cat: cat).first

      @title = cat.titleize
      @subtitle = "Find the products and service you need."
      @message = "This will be the general welcome message. It should be about 5-8 lines long on a full screen and can be clip shorter on a mobile device. 'alihs'lhglkjnafdgm fg kjnfaj skdnf sn kj dfoigIOPqj jkdf gj wd kdfj hdwkjfhv jlwhjhe jfhq jhe fgjh wdfjgh dwjfhg j,wdhf gwhdf g.hwdf.gh feg;qheghqjfhv jhd vjqh dgh ejrhg jhfg jhdfgjqejrgquertiuqergiuqf gjh qdfgjh qehgjqh egjh qjge qjfgiuqeg qjegh qidf gjh qefghqihe gjhq egjh qejg jqfgj qfegh qejhr fjh dfjh qjerh tjqh ejrth qjerht jqr efjhqrehrf."

    end
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

  def categories
    businesses = Business.where(published: true).order('category ASC')

    cats = []
    businesses.each do |b|
      
      unless cats.include?(b.category)
        cats << b.category       
      end
    end

    render json: {cats: cats}
  end
end

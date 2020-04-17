class Admin::BusinessesController < AdminApplicationController
  layout 'admin_business'

  def index
    if Business.all.size > 0
      redirect_to admin_business_path(Business.all.order("name ASC").first)
    else
        redirect_to new_admin_business_path()
    end
  end

  def show
    @bus = Business.find(params[:id])

    @adSets = AdSet.where(business_id: @bus.id).all.order("published ASC")
    @newAdSet = AdSet.new(business_id: @bus.id, cat: @bus.category)

    allcats = Business.select(:category).all.order('category ASC')
    @cats = []
    allcats.each do |c|
      
      unless @cats.include?(c.category)
        @cats << c.category       
      end
    end

    @allBusinesses = Business.all.order("name ASC")
  end

  def new
    allcats = Business.select(:category).all.order('category ASC')
    @cats = []
    allcats.each do |c|
      
      unless @cats.include?(c.category)
        @cats << c.category       
      end
    end

    @positions = []
    pos = Business.all.size + 1
    @newPo = pos

    for i in 1..pos
      @positions << i
    end

    @bus = Business.new
  end

  def create
    business = Business.new(business_params)

    if business.save
      flash[:notice] = "#{business.name} was successfully created."
      redirect_to admin_business_path(business.id);
    else
      render 'new'
    end
    
  end

  def edit
  end

  def update
    @business = Business.find(params[:id])

    if @business.update(business_params)
      
      flash[:notice] = "#{@business.name} was updated successfully."
      redirect_to(admin_business_path(@business))

    else
      render('edit')
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :latitude, :longitude, :address1, :address2, :city, :state, :zipcode, :phone, :website, :category, :isFeatured, :position, :published, :image, :featureAd)
  end

end

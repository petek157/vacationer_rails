class Admin::FeaturesController < AdminApplicationController
  def index
    if Feature.all.size > 0
      redirect_to admin_feature_path(Feature.first)
    else
        redirect_to new_admin_feature_path()
    end
  end

  def show
    @features = Feature.all.order('position ASC')
    @feature = Feature.find(params[:id])

    @positions = []
    pos = Feature.all.size

    for i in 1..pos
      @positions << i
    end
  end

  def new
    @positions = []
    pos = Feature.all.size + 1
    @newPo = pos

    for i in 1..pos
      @positions << i
    end
    @feature = Feature.new()
  end

  def create
    @f = Feature.new(feature_params)

    if @f.save
        redirect_to admin_features_path()
        flash[:notice] = "Feature \"#{@f.title}\" was created."
    else

        render 'new'

    end
  end

  def edit
  end

  def update
    oldItem = Feature.find(params[:id])
      
    @updatedItem = Feature.new(feature_params)
      @allItems = Feature.all()

      if oldItem.position != @updatedItem.position 
        @allItems.each do |item| 

          if item.id != @updatedItem.id
            if @updatedItem.position < oldItem.position
              
              if item.position >= @updatedItem.position && item.position < oldItem.position
                item.position = item.position + 1
                item.save
              end

            else

              if item.position <= @updatedItem.position && item.position > oldItem.position
                item.position = item.position - 1
                item.save
              end

            end
          end

        end#do end
      end




    if oldItem.update_attributes(feature_params)
        flash[:notice] = "#{oldItem.title} has been updated."
        redirect_to(admin_feature_path(oldItem))
    else
        render('show')
    end
  end

  private

  def feature_params
    params.require(:feature).permit(:title, :text, :link, :align, :x, :y, :theme, :published, :position, :image)
  end
end

class Admin::SlidersController < AdminApplicationController

  layout 'admin'
  
  def index
    if Slider.all.size > 0
      redirect_to admin_slider_path(Slider.first)
    else
        redirect_to new_admin_slider_path()
    end
  end

  def show
    @sliders = Slider.all.order('position ASC')
    @slider = Slider.find(params[:id])

    @positions = []
    pos = Slider.all.size
    @newPo = pos

    for i in 1..pos
      @positions << i
    end
  end

  def new
    @positions = []
    pos = Slider.all.size + 1
    @newPo = pos

    for i in 1..pos
      @positions << i
    end
    @slider = Slider.new()
  end

  def create

    @s = Slider.new(slider_params)

    if @s.save
        redirect_to admin_sliders_path()
        flash[:notice] = "Slider \"#{@s.title}\" was created."
    else

        render 'new'

    end
  end

  def edit
  end


  def update
    @slider = Slider.find(params[:id])
      
    if @slider.update_attributes(slider_params)
          flash[:notice] = "#{@slider.title} has been updated."
          redirect_to(admin_slider_path(@slider))
      else
          render('show')
      end
  end

  private

  def slider_params
    params.require(:slider).permit(:title, :subtitle, :note, :splash, :published, :position, :color, :image)
  end
end

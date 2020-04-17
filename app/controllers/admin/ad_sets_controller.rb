class Admin::AdSetsController < ApplicationController

    def create
        ad_set = AdSet.new(ad_set_params)

        if ad_set.save
            flash[:notice] = "#{ad_set.name} was successfully created."
            redirect_to admin_business_path(ad_set.business_id);
        else
            flash[:notice] = "#{ad_set.name} was NOT updated."
            redirect_to(admin_business_path(ad_set.business_id))
        end
    end

    def update
        ad_set = AdSet.find(params[:id])

        if ad_set.update(ad_set_params)
        
            flash[:notice] = "#{ad_set.name} was updated successfully."
            redirect_to(admin_business_path(ad_set.business_id))

        else
            flash[:notice] = "#{ad_set.name} was NOT updated."
            redirect_to(admin_business_path(ad_set.business_id))
        end
    end

    private

    def ad_set_params
        params.require(:ad_set).permit(:id, :business_id, :name, :url, :cat, :on_main, :on_cat, :on_other_cat, :other_cat, :large, :medium, :small)
    end

end

class ReferralsController < ApplicationController
  

  def new
    @referral ||= Referral.new
    
  end

  def create
    @referral = Referral.new(permitted_params)
    if @referral.save
      redirect_to referrals_path
    else 
      flash[:error] = @referral.errors.to_a.join(', ')
      render :new
    end
  end

  def index
    @referrals = Referral.all.order(created_at: :desc)
  end
  

  def permitted_params
    params.require(:referral).permit(
      :organization,
      :pin,
      :address,
      :zip,
      :city,
      :adress_directions,
      :contact_name,
      :patients_attributes => [
        :id,
        :zip,
        :name,
        :address,
        :city
      ]
    )
  end
end
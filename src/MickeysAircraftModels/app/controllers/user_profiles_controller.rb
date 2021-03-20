class UserProfilesController < ApplicationController
  before_action :show_profile, only: [:edit, :update, :show, :destroy]
  before_action :check_role, only: [:destroy]

  # GET /user_profiles or /user_profiles
  def index
    @user_profiles = UserProfile.all
  end

  # GET /user_profiles/1 or /user_profiles/1
  def show
  end

  # GET /user_profiles/new
  def new
    @user_profile = UserProfile.new
    @user_profile.build_address
  end

  # GET /user_profiles/1/edit
  def edit
  end

  # POST /user_profiles or /user_profiles.json
  def create
    address_params = user_profile_params[:address_attributes]
      if !address_params.empty?
        # Create new address
        @address = Address.create(address_params)
      else
        # Use the selected address
        @address = Address.find(user_profile[:address])
      end

      @user_profile = current_user.create_user_profile(user_profile_params)
      user_profile = UserProfile.create(first_name: user_profile_params[:first_name], last_name: user_profile_params[:last_name], age: user_profile_params[:age], address: @address)
      
    redirect_to root_path
  end

  def update
    address_params = user_profile_params[:address_attributes]
    if !address_params.empty?
		  # Create new Address if doesn't exist
		  @address = Address.where(street_number: address_params[:street_number], street_name: address_params[:street_name], suburb: address_params[:suburb], state: address_params[:state], postcode: address_params[:postcode]).first
		  if @address.nil?	
			  @address = Address.create(address_params)
		  end
		else
		  # Use the selected Address
		  @Address = Address.find(user_profile_params[:address])
		end

    @user_profile.update(user_profile_params)

    redirect_to user_profile_path(current_user.id)
  end

  def destroy
    @user_profile.destroy(user_profile_params)

    redirect_to root_path
  end

  private
  def show_profile
    # @user_profiles = UserProfile.find_by_id(user_profile_params[:id])
    # @user_profiles = current_user.find_by_id(id: user_profile_params[:id, address_attributes:[:id]])
    # @user_profiles = current_user.find(id: user_profile_params[:id, address_attributes:[:id]])
    # @user_profiles = UserProfile.find_by_id
    # @user_profiles.find_by_id(user_profile_params)
    @user_profile = current_user.user_profile  
  end

  def user_profile_params
    params.require(:user_profile).permit(:first_name, :last_name, :age, :contact_number, :user_id, address_attributes: [:id, :street_number, :street_name, :suburb, :state, :postcode])
  end

  def check_role
    if current_user && current_user.has_role?(:admin)
      return
    else 
      flash[:alert] = "You are not authorised!"
      redirect_to root_path
    end
  end
end
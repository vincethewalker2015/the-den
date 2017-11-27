class ProfilesController < ApplicationController
  
  def new
    # form where a user can fill out their own profile.
    @user = User.find( params[:user_id] )
    #@profile = @user.build_profile - This creates an error if you want to return back to users showpage. Best use the one below'
    @profile = Profile.new
  end
  
  def create
    @user = User.find( params[:user_id] )
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = "Your Profile has been updated"
      redirect_to user_path( params[:user_id] )
    else
      render action: :new
    end
    
  end
  
   def edit
     @user = User.find( params[:user_id] )
     @profile = @user.profile
   end
      

  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
    end
end
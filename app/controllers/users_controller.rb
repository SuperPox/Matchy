class UsersController < ApplicationController

    before_action(:set_user)

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)      
        if @user.save
        session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            @errors = @user.errors.full_messages
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def edit
    end

    def update
        if @user.update(profile_params)
            redirect_to user_path(@user)
        else
            @errors = @user.errors.full_messages
            render :edit
        end
    end

    def destroy
        @user.delete
        redirect_to "/signup"
    end

    
    private
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

    def profile_params
        params.require(:user).permit(
            :name, :age, :gender, :race, :orientation, :past_relationship_status,
            :location, :profession, :hobbies, :spirituality,
            :match_age, :match_gender, :match_race, :match_past_relationship_status, :match_spirituality
        )
    end

    def set_user
        @user = User.find_by(id: params[:id])
    end

end

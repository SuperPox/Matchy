class ConnectionsController < ApplicationController

    
    
    
    
    
    def index
        #@user = User.find_by(id: params[:id])
        #@my_matches = @user.find_my_matches
        
        @user = User.last
        @user.find_my_matches

        @over_30 = User.older_than_30
    end

    def create
        @connection = current_user.connections.build(:connection_id => params[:connection_id])
        if @connection.save
            flash[:notice] = "successfully created connection"
            redirect_to root_url
        else
            flash[:error] = "unable to add connection"
            render :action => 'new'
        end
    end

    def destroy
        @connection = current_user.connections.find(params[:id])
        @connection.destroy
        flash[:notice] = "successfully destroyed connection"
        redirect_to root_url
    end


end

class UsersearchesController < ApplicationController
    
    
    def new
    @usersearch = Usersearch.new
    end
    
    def create
    @usersearch = Usersearch.create(usersearch_params)
    redirect_to @usersearch
    end

    def show
        @usersearch = Usersearch.find(params[:id])
    end
    
    private
    
    def usersearch_params
        params.require(:usersearch).permit(:keywords, :min_budget, :max_budget)
    end
    
end

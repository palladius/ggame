class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end
  
  def show
    @match = Match.find(params[:id])
  end
  
  def new
    @match = Match.new
  end
  
  def create
    @match = Match.new(params[:match])
    if @match.save
      flash[:notice] = "Successfully created match."
      redirect_to @match
    else
      render :action => 'new'
    end
  end
  
  def edit
    @match = Match.find(params[:id])
  end
  
  def update
    @match = Match.find(params[:id])
    if @match.update_attributes(params[:match])
      flash[:notice] = "Successfully updated match."
      redirect_to @match
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    flash[:notice] = "Successfully destroyed match."
    redirect_to matches_url
  end
end

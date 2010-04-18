class StatesController < ApplicationController
  
  def index
    @states = State.all(:order => 'total DESC')
  end
  
  def show
    @state = State.find(params[:id])
  end
  
  
  
end

class MySearchesController < ApplicationController
  def index
    @my_searches = MySearch.all
  end

  def show
    @my_search = MySearch.find(params[:id])
  end

  def new
    @my_search = MySearch.new
  end

  def create
    @my_search = MySearch.new(params[:my_search])
    if @my_search.save
      redirect_to @my_search, :notice => "Successfully created my search."
    else
      render :action => 'new'
    end
  end

  def edit
    @my_search = MySearch.find(params[:id])
  end

  def update
    @my_search = MySearch.find(params[:id])
    if @my_search.update_attributes(params[:my_search])
      redirect_to @my_search, :notice  => "Successfully updated my search."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @my_search = MySearch.find(params[:id])
    @my_search.destroy
    redirect_to my_searches_url, :notice => "Successfully destroyed my search."
  end
end

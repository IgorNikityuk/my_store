class PagesController < ApplicationController

  skip_before_filter :verify_authenticity_token
	before_filter :find_page,				only: [:show, :edit, :update, :destroy, :upvote]
	#before_filter :check_if_admin,	only: [:edit, :update, :destroy]

	#/pages
  def index
    @pages = Page.all
    #@pages = @pages.where("webelement_count >= ?", params[:webelement_count]) if params[:webelement_count]
    #@pages = @pages.where("created_at >= ?", 1.day.ago) if params[:today]
    #@pages = @pages.order("name ASC")
  end

  def expensive
  	@pages = Page.where("webelement_count > 3")
  	render :index
  end

  #/pages/1 GET
  def show
  	unless @page
  		render text: "Page not found", status: 404
  	end
  end

  #/pages/new GET
  def new
  	@page = Page.new
  end

  #/pages/1/edit GET
  def edit
  end

  #/pages POST
  def create
    @page = Page.create(page_params)
    if @page.errors.empty?
    	redirect_to action: "index"
    else 
    	render "new"
    end
  end

  #/pages/1 PUT
  def update
  	@page.update_attributes(page_params)
    if @page.errors.empty?
      flash[:success] = "Item successfully updated"
    	redirect_to page_path(@page)
    else 
      flash.now[:error] = "You made mistakes in your form. please correct them"
    	render "edit"
    end
  end

  #/pages/1 DELETE
  def destroy
  	@page.destroy
  	redirect_to action: "index"
  end

  #/pages/1/upvote
  def upvote
  	@page.increment!(:votes_count)
  	redirect_to action: "index"
  end

  def page_params
    params.require(:page).permit(:name, :url, :description, :webelement_count)
  end

  private

  def find_page
		@page = Page.where(id: params[:id]).first
		render_404 unless @page
  end

end

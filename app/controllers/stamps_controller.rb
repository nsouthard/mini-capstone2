class StampsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :random]
  # before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index

    @stamps = Stamp.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    search_term = params[:search_term]
    category_search_term  = params[:category]

    if category_search_term 
      category = Category.find_by(name: category_search_term)
      @stamps = category.stamps
    end

    if search_term
      @stamps = @stamps.where(
                                "name iLIKE ? OR description iLIKE ?", 
                                "%#{search_term}%",
                                "%#{search_term}%"
                                )
    end

    if sort_attribute && sort_order
      @stamps = @stamps.order(sort_attribute => sort_order)
    elsif sort_attribute
      @stamps = @stamps.order(sort_attribute)
    end
        

    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end
    
  end

  def new
    @product = Product.new
  end

  def create
    stamp = Stamp.new(
                          name: params[:name],
                          year: params[:year],
                          image: params[:image],
                          price: params[:price],
                          description: params[:description]
                          )
    if stamp.save
      flash[:success] = "New Stamp Successfully Added"
      redirect_to "/stamps/#{stamp.id}" #redirects to show action
    else
      render 'new.html.erb'
    end
  end

  def show
    stamp_id = params[:id]
    @stamp = Stamp.find_by(id: stamp_id)
  end

  def edit
    @stamp = Stamp.find(params[:id])
  end

  def update
    stamp = Stamp.find(params[:id])
    stamp.assign_attributes(
                              name: params[:name],
                              year: params[:year],
                              image: params[:image],
                              price: params[:price],
                              description: params[:description]
                              )
    if stamp.save
      flash[:success] = "Stamp Collection Successfully Updated"
      redirect_to "/stamps/#{stamp.id}" #redirects to show action
    else
      render '/stamps/:id/edit'
    end
  end

  def destroy
    stamp = Stamp.find(params[:id])
    stamp.destroy
    flash[:warning] = "Stamp Successfully Removed"
    redirect_to "/" #redirects to home page
  end


end

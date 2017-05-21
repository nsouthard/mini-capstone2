class StampsController < ApplicationController

  def index
    @stamps = Stamp.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    search_term = params[:search_term]

    if search_term
      @stamps = @stamps.where(
                                "name iLIKE ? OR description iLIKE ?", 
                                "%#{search_term}%",
                                "%#{search_term}%"
                                )
    end
  end

  def new
  end

  def create
    stamp = Stamp.new(
                          name: params[:name],
                          year: params[:year],
                          image: params[:image],
                          price: params[:price],
                          description: params[:description]
                          )
    stamp.save
    flash[:success] = "New Stamp Successfully Added"
    redirect_to "/stamps/#{stamp.id}" #redirects to show action
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
    stamp.save
    flash[:success] = "Stamp Collection Successfully Updated"
    redirect_to "/stamps/#{stamp.id}" #redirects to show action
  end

  def destroy
    stamp = Stamp.find(params[:id])
    stamp.destroy
    flash[:warning] = "Stamp Successfully Removed"
    redirect_to "/" #redirects to home page
  end

  def 
  end

end

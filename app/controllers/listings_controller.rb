class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:seller, :new, :create, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]

  def search
    @listings = Listing.all
    if params[:search]
      @listings = Listing.search(params[:search]).order("created_at DESC")
    else
      @listings = Listing.all.order('created_at DESC')
    end
  end

  def seller
    if current_user.has_role? :admin
      @listings = Listing.all
    else
      @listings = Listing.where(user: current_user).order("created_at DESC")
    end
  end

  # GET /listings
  # GET /listings.json
  # check to see whether the category parameter was passed
  # if blank then lisitngs variable will be filled with all lisitngs in database
  # else if exists then first find matching caterogy id then fill lsitings variable with al listings that belong to that category

  def index
    if params[:category].blank?
      @listings = Listing.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @listings = Listing.where(category_id: @category_id).order("created_at DESC")
    end
  end



  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.create(listing_params)
    @listing.user_id = current_user.id
    @listing.visible = true

    respond_to do |format|
      if @listing.save
#        @listing.update_attribute(:visible, 'true')

        UserNotifierMailer.send_listing_notification(@listing.user, @listing).deliver_now

        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @listing }
      else
        format.html { render action: 'new' }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:name, :category_id, :description, :price, :image, :visible)
    end

    def check_user
      unless current_user == @listing.user or current_user.has_role? :admin
        redirect_to root_url, alert: "Sorry, this listing belongs to someone else"
      end
    end
end

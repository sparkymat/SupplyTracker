class GoodsCommitmentsController < InheritedResources::Base
  # before_action :authenticate_user!

  def create
    super do |format|
      format.html {
        if @goods_commitment.present? and @goods_commitment.id.present?
          redirect_to goods_commitment_path(@goods_commitment),
                                notice: "Your request was successfully placed.
                                        Your password is #{@goods_commitment.user.otp}.
                                       Login to see and track your donations. #keralafloods"
        else
          redirect_to new_goods_commitment_path,
                      notice: "Please fill the fields properly"
        end
      }
    end
  end

  def new
    @goods_commitment = GoodsCommitment.new
    @goods_commitment.available_from = Date.today
    @goods_commitment.inventories << Inventory.new
  end

  def edit
    super do
      @goods_commitment.name = @goods_commitment.user.try(:name)
      @goods_commitment.email = @goods_commitment.user.try(:email)
      @goods_commitment.phone_number = @goods_commitment.user.try(:phone_number)
    end
  end

  def index
    @goods_commitments = GoodsCommitment.none
  end

  private

  def goods_commitment_params
    params.require(:goods_commitment).permit(:name, :email, :phone_code, :phone_number, :available_from, :district_id, :area_id, :location, :latitude,
         :longitude, inventories_attributes: [:item_category_id, :item_type_id, :item_type_name,
        :item_subtype_id, :item_unit_id, :quantity, :area_id, :latitude, :longitude, :address, :initial_quantity,
        :available_quantity, :source, :volunteer_id, :contact_number, :contact_name, :available_from, :_destroy])
  end
end

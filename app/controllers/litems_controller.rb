class LitemsController < ApplicationController
  before_action :set_llist
  before_action :set_litem, only: %i( show edit update destroy done )


  def new
    @litem = @llist.litems.new
  end


  def create
    @litem = @llist.litems.new(litem_params)

    if @litem.save
      flash[:notice] = 'added'
      render json: @llist, status: :created, location: @llist
    else
      render json: @llist.errors, status: :unprocessable_entity
    end
  end


  def done
    @litem.increment!(:count)
    # TODO: ajax
    redirect_to llist_path @llist
  end


  private



  def set_llist
    id = litem_params[:llist_id] rescue params[:llist_id]
    @llist = Llist.find(id)
  end


  def set_litem
    id = litem_params[:id] rescue params[:id]
    @litem = @llist.litems.find(id)
  end


  def litem_params
    params[:litem].try(:permit, [:name, :weight, :llist_id])
  end

end

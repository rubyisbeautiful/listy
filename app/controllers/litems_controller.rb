class LitemsController < ApplicationController
  before_action :set_llist
  before_action :set_litem, only: [ :show, :edit, :update, :destroy ]


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


  private



  def set_llist
    @llist = Llist.find(litem_params[:llist_id])
  end


  def set_litem
    @litem = @llist.litems.find(litem_params[:id])
  end


  def litem_params
    params[:litem].permit([:name, :weight, :llist_id])
  end

end

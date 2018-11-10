class LlistsController < ApplicationController
  before_action :set_llist, only: [ :index, :show, :next, :edit, :update, :destroy ]

  def index
    if @llist
      render :action => :show
    else
      @llist = Llist.new
      render :action => :new
    end
  end


  def show
  end


  def next
    @llist.next_item!
    redirect_to llist_path(@llist)
  end


  def new
    @llist = Llist.new
  end


  def edit
  end


  def create
    Rails.logger.debug "trying params: #{llist_params}"

    @llist = Llist.new(llist_params)


    respond_to do |format|
      if @llist.save
        format.html { redirect_to @llist, notice: 'Listy list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @llist }
      else
        format.html { render action: 'new' }
        format.json { render json: @llist.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @llist.update(listy_list_params)
        format.html { redirect_to @llist, notice: 'Listy list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @llist.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @llist.destroy
    respond_to do |format|
      format.html { redirect_to listy_lists_url }
      format.json { head :no_content }
    end
  end



  private



    def set_llist
      @llist = Llist.find(params[:id]) if params[:id]
    end


    def llist_params
      params[:llist].permit(:name)
    end
end

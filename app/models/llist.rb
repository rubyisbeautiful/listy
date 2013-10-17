class Llist < ActiveRecord::Base

  has_many :litems, -> { order :position }

  def current_litem
    if current_litem_id.blank?
      random_litem
    else
      Litem.find current_litem_id
    end
  end


  def random_litem
    current_litem = litems.order("rand()").limit(1).first
    update_attributes current_litem_id: current_litem.id
    current_litem
  end


  def next_item
    # TODO: mode
    #case
    #  when mode.random?
    #  when mode.sequential?
    #end
    new_current_litem = current_litem.lower_items.first
    new_current_litem ||= litems.first
    update_attributes current_litem_id: new_current_litem.id
    current_litem
  end

end

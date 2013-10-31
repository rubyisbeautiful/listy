class Llist < ActiveRecord::Base

  has_many :litems, -> { order :position }

  def current_litem
    if current_litem_id.blank?
      random_litem!
    else
      Litem.find current_litem_id
    end
  end


  def random_litem!
    new_current_litem = litems.order("rand()").limit(1).first
    update_attributes current_litem_id: new_current_litem.id
    current_litem
  end


  def next_item!
    case mode
      when 'random'
        new_current_litem = litems.order("rand()").limit(1).first
      when 'order'
        new_current_litem = current_litem.lower_items.first
        new_current_litem ||= litems.first
    end

    update_attributes current_litem_id: new_current_litem.id
    current_litem
  end

end
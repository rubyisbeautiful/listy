class Llist < ActiveRecord::Base

  has_many :litems, -> { order :position }

  def current_litem
    Litem.find current_litem_id
  end


  def random_litem
    current = litems.order("rand()").limit(1).first
    save
    current
  end


  def next_item
    new_current = current.lower_items.first
    current = new_current
    save
  end

end

class TodoList

  def initialize(todo_items)
    @items = todo_items
  end

  def get_items
    @items
  end

  def add_item(new_item)
    @items << new_item
  end

  def delete_item(item_to_delete)
    @items.delete(item_to_delete)
    @items
  end

  def get_item(number_on_list)
    @items[number_on_list]
  end


end

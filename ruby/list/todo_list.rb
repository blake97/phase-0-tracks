class TodoList

  def initialize (todo_items)
    @todo_items = todo_items
  end

  def get_items
    @todo_items
  end

  def add_item(new_item)
@todo_items.push(new_item)
@todo_items
  end

  def delete_item(x)
    @todo_items.delete(x)
  end

  def retrieve_item(index)
    @todo_items[index]
  end

end

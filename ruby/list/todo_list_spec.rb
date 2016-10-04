 require_relative 'todo_list'
#initialize
describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }


##### get_items
  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end


##### add_item
  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

##### delete an item
  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end


####get item by index
  it "retrieves an item by index" do
    expect(list.retrieve_item(0)).to eq "do the dishes"
  end
end

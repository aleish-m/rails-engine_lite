require 'rails_helper'

describe "Items API" do
  it "sends a list of all items" do
    create_list(:item, 5)
  end
end
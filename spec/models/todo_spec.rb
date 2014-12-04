require 'rails_helper'


describe 'todo' do
  before :each do
    @todo = Todo.new
  end
  describe "validations" do
    it "should not save the todo if the description is blank" do
      expect(@todo.save).to eq(false)
    end

    it "should save the todo if it has a description" do
      @todo.description='foobarbaz'
      expect(@todo.save).to eq(true)
    end
  end
end

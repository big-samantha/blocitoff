require 'rails_helper'


describe 'todo' do
  before :each do
    @todo = Todo.new
  end
  describe "todo validations" do
    it "should not be valid if the description is blank" do
      expect(@todo.valid?).to eq(false)
    end

    it "should be valid if the description is not blank" do
      @todo.description='foobarbaz'
      expect(@todo.valid?).to eq(true)
    end
  end
end

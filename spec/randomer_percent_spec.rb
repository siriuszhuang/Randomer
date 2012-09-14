require 'spec_helper'

describe Randomer::Percent do
  before(:each) do
    @percent_list = {
      :a => 900,
      :b => 1000,
      :c => 870,
      :d => 0,
      :e => 0,
    }
  end

  it "Pick one by percent list" do
    1000.times do
      result = Randomer::Percent.pick_one @percent_list
      @percent_list.include?(result).should == true
      (result == :d).should == false
      (result == :e).should == false
    end
  end
end

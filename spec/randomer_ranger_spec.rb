require 'spec_helper'

describe Randomer::Ranger do
  before(:each) do
    @list = {
      :range_number => 1..1000,
      :range_char   => 'a'..'z',
      :array_number => [1, 2, 3, 4, 5, 6, 100, 200, 300, 444, 555],
      :array_string => ['ab', 'ssh', 'cp', 'cd', 'mv', 'git', 'rails'],
    }
  end

  it "Random in some range" do
    @list.each do |key, value|
      result = Randomer::Ranger.rand_in value
      value.include?(result).should == true
    end
  end

  it "Get randmon lower string" do
    string_length = 10
    p Randomer::Ranger.randmon_string string_length
    p Randomer::Ranger.randmon_string(
      string_length,
      :lower
    )
  end

  it "Get randmon upper string" do
    string_length = 10
    p Randomer::Ranger.randmon_string(
      string_length,
      :upper
    )
  end

  it "Get randmon upper and lower string" do
    string_length = 10
    p Randomer::Ranger.randmon_string(
      string_length,
      :upper,
      :lower
    )
  end

  it "Get randmon symbol string" do
    string_length = 10
    p Randomer::Ranger.randmon_string(
      string_length,
      :symbol
    )
  end

  it "Get randmon all string" do
    string_length = 50
    p Randomer::Ranger.randmon_string(
      string_length,
      :symbol,
      :upper,
      :lower,
      :number
    )
  end
end

require "spec_helper"
require File.expand_path(File.dirname(__FILE__) + '/../prime')

describe Prime do

  it "120までの素数" do
      expect(Prime.new([120]).getPrime).to match_array [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]
  end

end
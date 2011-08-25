require "rspec"
require File.dirname(__FILE__)  + "/../app/models/why_nots/integer"

describe Integer do

  context "calling closest_fibonacci on a positive fixnum or zero" do
    it "returns the correct value" do
      -0.closest_fibonacci.should == 0
      0.closest_fibonacci.should eq 0
      1.closest_fibonacci.should eq 1 
      2.closest_fibonacci.should eq 2 
      3.closest_fibonacci.should eq 3 
      4.closest_fibonacci.should eq 3 
      5.closest_fibonacci.should eq 5 
      6.closest_fibonacci.should eq 5 
      7.closest_fibonacci.should eq 5 
      8.closest_fibonacci.should eq 8 
      9.closest_fibonacci.should eq 8 
      10.closest_fibonacci.should eq 8 
      12.closest_fibonacci.should eq 8 
      13.closest_fibonacci.should eq 13 
      14.closest_fibonacci.should eq 13 
      15.closest_fibonacci.should eq 13 
      20.closest_fibonacci.should eq 13 
      21.closest_fibonacci.should eq 21 
      99.closest_fibonacci.should eq 89 
      156.closest_fibonacci.should eq 144 
      fixnumber = 99999999
      fixnumber.is_a?(Fixnum) .should be_true
      fixnumber.is_a?(Fibonacci) .should be true
      fixnumber.closest_fibonacci.should eq 63245986
    end
  end

  context "calling closest_fibonacci on a positive bignum" do
    it "returns the correct value" do
      bignumber = 999999999999999999999999999999
      bignumber.should be_an_instance_of Bignum
      bignumber.should_not be_an_instance_of Fixnum
      bignumber.should be_a_kind_of Fibonacci
      bignumber.closest_fibonacci.should eq 898923707008479989274290850145
    end
  end

  context "calling closest_fibonacci on the current time" do
    it "returns something" do
      Time.now.to_i.closest_fibonacci.should be_true
    end
  end

end

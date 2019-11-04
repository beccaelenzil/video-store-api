require "test_helper"

describe Customer do
  describe "validations" do
    it "can instatiate a customer" do
      customer = customers(:shelley)

      result = customer.valid?
      
      expect(result).must_equal true
    end

    it "cannot have a blank name" do
      customer = customers(:shelley)
      customer.name = nil

      result = customer.valid?
      
      expect(result).must_equal false
    end
  end
end

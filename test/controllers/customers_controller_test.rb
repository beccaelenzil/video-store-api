require "test_helper"

describe CustomersController do
  describe "index" do
    it "responds with an array of customer hashes" do
      # Act
      get customers_path
  
      # Get the body of the response
      body = JSON.parse(response.body)
  
      # Assert
      expect(body).must_be_instance_of Array
      body.each do |customer|
        expect(customer).must_be_instance_of Hash
        expect(customer.keys.sort).must_equal ["address", "city", "name", "phone", "postal_code", "registered_at", "state"]
      end
    end
    
    it "will respond with an empty array when there are no customers" do
      # Arrange
      Customer.destroy_all

      # Act
      get customers_path
      body = JSON.parse(response.body)

      # Assert
      expect(body).must_be_instance_of Array
      expect(body).must_equal []
    end
  end
end

require "test_helper"

describe Movie do
    it "can instatiate a movie" do
      movie = movies(:blacksmith)

      result = movie.valid?
      
      expect(result).must_equal true
    end

    it "cannot have a blank title" do
      movie = movies(:blacksmith)

      movie.title = nil
      result = movie.valid?
      
      expect(result).must_equal false
    end

    it "has 0 or more inventory" do
      movie = movies(:blacksmith)
      movie.inventory = -1

      result = movie.valid?
      
      expect(result).must_equal false
    end

end
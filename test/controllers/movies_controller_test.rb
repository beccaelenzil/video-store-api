require "test_helper"

describe MoviesController do
  describe "index" do
    it "responds with an array of movie hashes" do
      # Act
      get movies_path
  
      # Get the body of the response
      body = JSON.parse(response.body)
  
      # Assert
      expect(body).must_be_instance_of Array
      body.each do |movie|
        expect(movie).must_be_instance_of Hash
        expect(movie.keys.sort).must_equal ["inventory", "overview", "release_date", "title"]
      end
    end

    
    it "will respond with an empty array when there are no movies" do
      # Arrange
      Movie.destroy_all

      # Act
      get movies_path
      body = JSON.parse(response.body)

      # Assert
      expect(body).must_be_instance_of Array
      expect(body).must_equal []
    end
  end
end

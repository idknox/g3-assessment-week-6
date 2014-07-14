require "rspec"
require "parks"

describe Parks do
  describe "sort by index" do
    it "arranges the parks by index in a hash" do
      parks = Parks.new([{
                           :id => 546,
                           :name => "Kalahari Resorts",
                           :city => "Wisconsin Dells",
                           :state => "Wisconsin",
                           :country => "United States"
                         },
                         {
                           :id => 547,
                           :name => "Little Amerricka",
                           :city => "Marshall",
                           :state => "Wisconsin",
                           :country => "United States"
                         }
                        ])

      parks_after = {
        546 => {
          :id => 546,
          :name => "Kalahari Resorts",
          :city => "Wisconsin Dells",
          :state => "Wisconsin",
          :country => "United States"
        },
        547 => {
          :id => 547,
          :name => "Little Amerricka",
          :city => "Marshall",
          :state => "Wisconsin",
          :country => "United States"
        }
      }

      expect(parks.index_by_id).to eq(parks_after)
    end
  end

  describe "index by country" do
    it "arranges the parks by country in a hash" do
      parks = Parks.new([
                          {
                            :id=>546,
                            :name=>"Kalahari Resorts",
                            :city=>"Wisconsin Dells",
                            :state=>"Wisconsin",
                            :country=>"United States"
                          },
                          {
                            :id=>547,
                            :name=>"Little Amerricka",
                            :city=>"Marshall",
                            :state=>"Wisconsin",
                            :country=>"United States"
                          },
                          {
                            :id=>2,
                            :name=>"Calaway Park",
                            :city=>"Calgary",
                            :state=>"Alberta",
                            :country=>"Canada"
                          }
                        ])

      parks_after = {
        "Canada" => [
          {
            :id=>2,
            :name=>"Calaway Park",
            :city=>"Calgary",
            :state=>"Alberta",
            :country=>"Canada"
          }
        ],
        "United States" => [
          {
            :id=>546,
            :name=>"Kalahari Resorts",
            :city=>"Wisconsin Dells",
            :state=>"Wisconsin",
            :country=>"United States"
          },
          {
            :id=>547,
            :name=>"Little Amerricka",
            :city=>"Marshall",
            :state=>"Wisconsin",
            :country=>"United States"
          }
        ]
      }

      expect(parks.index_by_country).to eq(parks_after)
    end
  end
end

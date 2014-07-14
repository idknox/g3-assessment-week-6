class Parks

  def initialize(parks)
    @parks = parks
  end

  def index_by_id
    output = {}
    @parks.map do |park|
      output[park[:id]] = park
    end
  output
  end

end
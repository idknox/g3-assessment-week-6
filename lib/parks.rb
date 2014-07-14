class Parks

  def initialize(parks)
    @parks = parks
  end

  def index_by_id
    output = {}
    @parks.each {|park| output[park[:id]] = park}
    output
  end

  def index_by_country
  @parks.group_by {|park| park[:country]}
  end
  
end
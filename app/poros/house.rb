class House
  attr_reader :name, :members
  def initialize(house_name)
    @name = house_name
    @members = []
    @member_info = retrieve_member_info
    create_members
  end

  def create_members
    @member_info.each do |individual_info|
      @members << Member.new(individual_info)
    end
  end

  private

  def retrieve_member_info
    member_info = PotterService.new(@name).parsed
  end

end

class House
  attr_reader :name, :members
  def initialize(house_name, member_info)
    @name = house_name
    @member_info = member_info
    @members = []
    create_members
  end

  def create_members
    @member_info.each do |individual_info|
      @members << Member.new(individual_info)
    end
  end

end

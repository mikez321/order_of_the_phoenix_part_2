class Member
  attr_reader :id, :name, :house
  def initialize(member_info)
    @member_info = member_info
    @id = member_info[:_id]
    @name = member_info[:name]
    @house = member_info[:house]
  end

  def role
    @member_info[:role] if !@member_info[:role].nil?
    "unknown"
  end

  def patronus
    @member_info[:patronus] if !@member_info[:patronus].nil?
    "unknown"
  end
end

class Member
  attr_reader :id, :name, :role, :house, :patronus
  def initialize(member_info)
    @id = member_info[:_id]
    @name = member_info[:name]
    @role = if member_info[:role].nil?
              "unknown"
            else
              member_info[:role]
            end
    @house = member_info[:house]
    @patronus = if member_info[:patronus].nil?
                  "unknown"
                else
                  member_info[:patronus]
                end
  end
end

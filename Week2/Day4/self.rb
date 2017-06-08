class House
  def to_s
    "#{@name} owned by #{self.owner_name}"
  end

  def owner_name
    @owner.name
  end
end

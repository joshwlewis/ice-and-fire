HOUSE_DATA = [
  { name: "Baratheon", words: "Ours is the Fury"},
  { name: "Bolton", words: "Our Blades are Sharp" },
  { name: "Greyjoy", words: "We Do Not Sow" },
  { name: "Lannister", words: "Hear Me Roar" },
  { name: "Martell", words: "Unbent, Unbroken" },
  { name: "Stark", words: "Winter is Coming" },
  { name: "Targaryen", words: "Fire and Blood" }
]

House = Struct.new(:name, :words) do
  def self.all
    @all ||= HOUSE_DATA.map { |d| House.new(d[:name], d[:words]) }
  end

  def self.find(name)
    all.find { |house| house.name.downcase == name.downcase  }
  end

  def to_json(args = {})
    puts args.inspect
    to_h.to_json
  end
end

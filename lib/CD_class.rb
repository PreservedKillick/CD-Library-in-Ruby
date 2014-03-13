class CD

  attr_reader :artist, :album

  @@all_cds = []


  def CD.all
    @@all_cds
  end

  def CD.clear
    @@all_cds = []
  end

  def CD.create(cd_info)
    new_cd = CD.new(cd_info)
    new_cd.save
    new_cd
  end

  def initialize(cd_info)
    @artist = [cd_info[:artist]]
    @album = [cd_info[:album]]
  end

  def save
    @@all_cds << self
  end

  def add_artist(name)
    @artist << name
  end

end

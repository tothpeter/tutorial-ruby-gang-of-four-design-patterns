class Video
  def initialize title, description
    @title = title
    @description = description
  end

  def play
    p @title
    p @description
  end
end
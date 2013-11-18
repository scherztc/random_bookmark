class Randomizer

  def initialize(name)
    @name = name
  end

  def generate()
    File.open("#{@name}", 'r') do |file|
      @contentsArray = []
      while line = file.gets
        @contentsArray.push line
      end
    end
  end

  def display()
    puts @contentsArray[rand(@contentsArray.length)]
  end
end

url = Randomizer.new("../app/models/bookmark_url.lst")
url.generate
url.display





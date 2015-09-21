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
    value = @contentsArray[rand(@contentsArray.length)]
    value = value.chomp
    cmd = `open '#{value}'`
    puts #{value}
    puts = cmd
  end
end

url = Randomizer.new("../app/models/bookmark_url.lst")
url.generate
url.display





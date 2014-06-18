class Grader

  def initialize(data)
    @data = data
  end

  def process
    if @data.empty?
      []
    end
  end
end
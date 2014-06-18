class Grader

  def initialize(data)
    @data = data
  end

  def process
    results = []
    if @data.empty?
      results
    else
      @data.each_with_index do |grade, i|
        last_grade = @data[i-1] unless i == 0
        if last_grade != nil
          if last_grade == grade
            results << :even
          elsif last_grade > grade
            results << :down
          else
            results << :up
          end
        end
      end
      results
    end
  end
end
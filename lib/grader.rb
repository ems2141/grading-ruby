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

  def find_in_decline
    processed_grades = self.process
    num_of_down = processed_grades.collect {|x| x = :down}
    if num_of_down.length >= 3 and processed_grades.last != :up
      "in decline"
    else
      "not in decline"
    end
  end
end
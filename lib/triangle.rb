class Triangle
    attr_accessor :equilateral, :isosceles, :scalene

    def initialize(first,second,third)
      @first = first
      @second = second
      @third = third
    end

    def kind
      if @first == 0 && @second == 0 && @third == 0
        begin
          raise TriangleError
        rescue
          puts error.message
        end
      elsif @first + @second < @third
        begin
          raise TriangleError => error
        rescue
          puts error.message
        end
      elsif @first + @third < @second
        begin
          raise TriangleError => error
        rescue
          puts error.message
        end
      elsif @second + @third < @first
        begin
          raise TriangleError => error
        rescue
          puts error.message
        end
      elsif @first < 0 || @second < 0 || @third < 0
        begin
          raise TriangleError => error
        rescue
          puts error.message
        end

      elsif @first == @second && @second == @third
        return :equilateral
      elsif @first == @second && @first != @third
        return :isosceles
      elsif @first == @third && @first != @second
        return :isosceles
      elsif @second == @third && @first != @second
        return :isosceles
      elsif @first != @second && @first != @third && @second != @third
        return :scalene
      end

    end

    class TriangleError < StandardError
            def message
              puts "Triangle inequality is not Satisfied OR Sides were 0 or Negative"
            end
    end

end

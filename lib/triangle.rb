class Triangle
    attr_accessor :equilateral, :isosceles, :scalene

    def initialize(first,second,third)
      @first = first
      @second = second
      @third = third
    end

    def kind
      if @first == @second && @second == @third
        self.kind = equilateral
      elsif @first == @second ^ @first == @third ^ @second == @third
        self.kind = isosceles
      elsif @first != @second && @first != @third && @second != @third
        self.kind = scalene
      else
            if @first + @second < @third

            elsif @first + @third < @second

            elsif @second + @third < @first

            end
      end

    end

    def TriangleError(triangle)
      if triangle.class != Triangle
        begin
          raise TriangleError
        rescue

        end
      end
        class TriangleError < StandardError

        end
     end
end

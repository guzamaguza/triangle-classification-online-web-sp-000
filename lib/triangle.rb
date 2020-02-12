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
      elsif
        self.kind = isosceles
      elsif
        self.kind = scalene
      elsif

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

class Triangle
    attr_accessor :equilateral, :isosceles, :scalene

    def initialize(first,second,third)
      @first = first
      @second = second
      @third = third
    end

    def kind

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

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
            end
      end
    end


        class TriangleError < StandardError
            def message 
              puts "Triangle inequality is not Satisfied"
            end
        end

end

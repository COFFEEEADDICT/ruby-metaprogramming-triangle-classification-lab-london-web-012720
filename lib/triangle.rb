class Triangle
  
  def initialize(s1 = nil, s2 = nil, s3 = nil)
    #tri_type = nil

############ errors ###########
    if s1 <= 0 || s2 <= 0 || s3 <= 0
       raise TriangleError
    end

    if s1 == nil || s2 == nil || s3 == nil 
      raise TriangleError
    end

    
    
    if s1 + s2 <= s3 || s3 + s2 <= s1 || s1 + s3 <= s2
      raise TriangleError
    end
############ errors ###########


    if s1 == s2 && s2 == s3 && s3 == s1
      tri_type = :equilateral
    elsif s1 == s2 || s2 == s3 || s3 == s1
      tri_type = :isosceles
    else 
      tri_type = :scalene
    end
  
  @tri_type = tri_type
  end
#######################
  def kind
      @tri_type
  end
    

    class TriangleError < StandardError
          "illegal move bitches"
    end

  



end

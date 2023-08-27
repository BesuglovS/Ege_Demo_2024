##
Range(0, 1000).Where(a -> 
  (range(0, 1000).All(x -> 
   range(0, 1000).All(y -> 
       (((x + 2 * y) < a) or (y > x) or (x > 60))))))
.First
.Print; 
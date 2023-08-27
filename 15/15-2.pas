##
(0..1000).Where(a -> 
  (0..1000).All(x -> 
  (0..1000).All(y -> 
    (x + 2 * y < a) or (y > x) or (x > 60))))
.First
.Print; 
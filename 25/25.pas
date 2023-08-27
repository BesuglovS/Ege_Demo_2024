##
Range(0bi, 10000000000, 2024)
  .Where(x -> x.ToString.IsMatch('^1.2157.*4$'))
  .ForEach(x -> Println(x, x div 2024)); 
 ##
 '01234567'.Cartesian(5)           
           .Count(s -> (s[1] <> '0') and ('1' not in s) and 
                       (s.Distinct.Count = s.Length) and
                       (not (Regex.IsMatch(s, '[0246][0246]'))) and
                       (not (Regex.IsMatch(s, '[1357][1357]'))))
           .Print;

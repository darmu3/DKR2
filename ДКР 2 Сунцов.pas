begin
  var a: array[1..100] of integer;
  var b, e, n, d, min: integer;
  print('Размер массива от 1 до 100, введите n = ');
  readln(n);   
  if (n < 1) or (n > 100) then exit;
  print('Введите массив А:');
  for var i := 1 to n do read(a[i]);
  writeln;
  if abs(a[1])>abs(a[2])then min:=abs(a[1])-abs(a[2]) else min:=abs(a[2])-abs(a[1]);
  for var j:=1 to n do
    for var i:=1 to n do
    if (min>abs(a[i])-abs(a[j])) and (0<=abs(a[i])-abs(a[j])) and (a[i]<>a[j])then
      begin
      min:=abs(a[i])-abs(a[j]);
      b:=a[i];
      e:=a[j];
       end;
  print( b, ' и ', e);
end.

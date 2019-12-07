var
begin

  max7 := 0;
  max := 0;
  k := 0;
  
  while true do
  begin
    readln(x);
    
    if x = 0 then
      break;
    
    k := k + 1;
    
    if (x mod 49 <> 0) and (x mod 7 = 0) and (x > max7) then
      max7 := x;
      
    if (x mod 7 <> 0) and (x > max) then
      max := x;      
  end;
  
  if max * max7 = 0 then
    R := 1
  else
    R := max * max7;
  
  writeln(M);
  writeln('Введено чисел: ', k);
  writeln('Контрольное значание: ', M);
  writeln('Вычисленное контрольное значание: ', R);
  if M = R then
    writeln('Значения совпали')
  else
    writeln('Значения не совпали');
    
end.
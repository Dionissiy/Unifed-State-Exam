var
begin
  //initialize variables
  max7 := 0;//max among positive numbers divisible by 7, but not by 49
  max := 0;//max among positive numbers indivisible by 7
  k := 0;//amount of numbers
  
  //endless cycle with terminator 0
  while true do
  begin
    readln(x); //input a number
   
    if x = 0 then //terminator
      break;
    
    //the main algorithm below
    k := k + 1; 
    
    if (x mod 49 <> 0) and (x mod 7 = 0) and (x > max7) then
      max7 := x;
      
    if (x mod 7 <> 0) and (x > max) then
      max := x;      
  end; //end of cycle body
  
  //computing the control value
  if max * max7 = 0 then
    R := 1
  else
    R := max * max7;
  
  //form the report
  writeln(M);
  writeln('Введено чисел: ', k);
  writeln('Контрольное значание: ', M);
  writeln('Вычисленное контрольное значание: ', R);
  if M = R then
    writeln('Значения совпали')
  else
    writeln('Значения не совпали');
    
end.

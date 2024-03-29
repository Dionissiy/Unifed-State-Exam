﻿var
  A, B: integer; // максимум и предмаксимум среди элементов не кратных ни 2, ни 5
  A5, B5: integer; // максимум и предмаксимум среди элементов кратных 2, но не 5
  A2, B2: integer; // максимум и предмаксимум среди элементов кратных 5, но не 2
  x, i, n, r, max: integer;
  arr: array [0..4] of integer;
begin
  //Инициализация переменных; инициализируем нулями, так как множество ограничено снизу (только положительные числа)
  A := 0;
  B := 0;
  
  A5 := 0;
  B5 := 0;
  
  A2 := 0;
  B2 := 0;

  //Считаем максиммумы и предмаксимумы в каждой категории
  readln(n);
  for i := 1 to n do
  begin
    readln(x);
    
    if (x mod 2 <> 0) and (x mod 5 <> 0) and (x >= A) then
    begin
      B := A;
      A := x;
    end;
    
    if (x mod 2 = 0) and (x mod 5 <> 0) and (x >= A5) then
    begin
      B5 := A5;
      A5 := x;
    end;
    
    if (x mod 2 <> 0) and (x mod 5 = 0) and (x >= A2) then
    begin
      B2 := A2;
      A2 := x;
    end;   
  end;
  
  //Считаем всевозможные комбинации и запоминаем их в массив
  arr[0] := A * B;
  arr[1] := A * A5;
  arr[2] := A * A2;
  arr[3] := A5 * B5;
  arr[4] := A2 * B2;
  
  //Находим среди элементов массива максимальный элемент (комбинацию с максимальным значением)
  max := arr[0];
  for i := 1 to 4 do
    if arr[i] > max then
      max := arr[i];
  
  //Получение на вход контрольнго значения
  readln(r);
  
  //Формирование отчета
  writeln('Получено чисел: ', n);
  writeln('Принятое контрольное значение: ', r);
  
  if max = 0 then //max равен 0 только если контрольное значение получить невозможно
    writeln('Контроль не пройден')
  else begin
    writeln('Вычисленное контрольное значение: ', max);
    if r = max then
      writeln('Контроль пройден')
    else
      writeln('Контроль не пройден');
  end;
  
end.

program CalculateFunctionValue;

procedure CalculateF(x: real; var result: real);
begin
  if x > 1 then
    result := 1 / exp(x)
  else if (x >= 0) and (x <= 1) then
    result := x / 2
  else // если x < 0
    result := 1;
end;

var
  x, result: real;

begin
  // Ввод значения x
  writeln('Введите значение x:');
  readln(x);

  // Вызов процедуры для вычисления значения функции
  CalculateF(x, result);

  // Вывод результата
  writeln('Значение функции f(x) при x = ', x, ' равно ', result);
end.

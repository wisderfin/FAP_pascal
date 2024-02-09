program FactorialAndExpression;

function Factorial(n: integer): double;
var
  i: integer;
  fact: double;
begin
  fact := 1;
  for i := 2 to n do
    fact := fact * i;
  Factorial := fact;
end;

var
  k, n, m: integer;
  y: double;
  numerator, denominator1, denominator2: double;

begin
  // Ввод значений k, n и m
  writeln('Введите значения k, n и m:');
  readln(k, n, m);

  // Вычисление числителя (k!)
  numerator := Factorial(k);

  // Вычисление знаменателя (n+k)!
  denominator1 := Factorial(n + k);

  // Вычисление знаменателя (k-m)!
  denominator2 := Factorial(k - m);

  // Вычисление значения выражения
  y := numerator / (denominator1 * denominator2);

  // Вывод результата
  writeln('Значение выражения y = ', y:0:6);
end.

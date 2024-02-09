program CalculateFormulas;

uses
  math;

var
  a, m, n: real;
  Z1, Z2: real;

begin
  // Ввод значений переменных
  writeln('Введите значение переменной a:');
  readln(a);

  writeln('Введите значения переменных m и n:');
  readln(m, n);

  // Вычисление значений формул
  Z1 := power(cos((3/8) * pi - a/4), 2) - power(cos((11/8) * pi + a/4), 2);
  Z2 := (sqrt(m) - sqrt(n)) / m;

  // Вывод результатов
  writeln('Значение Z1: ', Z1:0:3);
  writeln('Значение Z2: ', Z2:0:3);
end.

program FindSumOfMaxAndMin;

procedure FindSumOfMaxAndMin(a, b, c: integer; var sum: integer);
var
  maxNum, minNum: integer;
begin
  // Находим максимальное из трех чисел
  maxNum := a;
  if b > maxNum then
    maxNum := b;
  if c > maxNum then
    maxNum := c;

  // Находим минимальное из трех чисел
  minNum := a;
  if b < minNum then
    minNum := b;
  if c < minNum then
    minNum := c;

  // Вычисляем сумму максимального и минимального чисел
  sum := maxNum + minNum;
end;

var
  a, b, c, sum: integer;

begin
  // Ввод трех чисел
  writeln('Введите три числа:');
  readln(a, b, c);

  // Вызов процедуры для нахождения суммы большего и меньшего чисел
  FindSumOfMaxAndMin(a, b, c, sum);

  // Вывод результата
  writeln('Сумма большего и меньшего чисел: ', sum);
end.

program DoublePositiveNumbers;

var
  num1, num2, num3: integer;

begin
  // Вводим три числа
  writeln('Введите три числа:');
  readln(num1, num2, num3);

  // Проверяем и удваиваем положительные числа
  if num1 > 0 then
    num1 := num1 * 2;
  if num2 > 0 then
    num2 := num2 * 2;
  if num3 > 0 then
    num3 := num3 * 2;

  // Выводим результат
  writeln('Результат:');
  writeln('Первое число: ', num1);
  writeln('Второе число: ', num2);
  writeln('Третье число: ', num3);
end.

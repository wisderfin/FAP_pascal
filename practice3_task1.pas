program UpdateNumbers;

var
  x, y, minNum, maxNum: real;

begin
  // Вводим два действительных числа
  writeln('Введите два действительных числа x и y:');
  readln(x, y);

  // Определяем меньшее и большее число
  if x < y then
  begin
    minNum := x;
    maxNum := y;
  end
  else
  begin
    minNum := y;
    maxNum := x;
  end;

  // Заменяем числа согласно условию
  minNum := (x + y) / 2;
  maxNum := 2 * x * y;

  // Выводим результат
  writeln('Меньшее число: ', minNum:0:2);
  writeln('Большее число: ', maxNum:0:2);
end.

program PrimeNumbersInRange;

var
  a, b, p, i: integer;
  isPrime: boolean;

begin
  // Ввод натуральных чисел a и b
  writeln('Введите натуральные числа a и b (a < b):');
  readln(a, b);

  // Проверка корректности ввода
  if (a < 2) or (b < a) then
  begin
    writeln('Некорректный ввод.');
    exit;
  end;

  // Проверяем каждое число в диапазоне [a, b] на простоту
  writeln('Простые числа в диапазоне [', a, ', ', b, ']:');
  for p := a to b do
  begin
    // Предполагаем, что текущее число простое
    isPrime := true;

    // Проверяем делители от 2 до sqrt(p)
    i := 2;
    while (i * i <= p) do
    begin
      if (p mod i = 0) then
      begin
        // Если число делится без остатка, оно не является простым
        isPrime := false;
        break;
      end;
      Inc(i);
    end;

    // Если число простое, выводим его
    if isPrime then
      writeln(p);
  end;
end.

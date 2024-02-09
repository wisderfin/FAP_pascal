program FindMinNegative;

const
  MAX_SIZE = 100; // Максимальное количество чисел

var
  p, count, i: integer;
  numbers: array[1..MAX_SIZE] of real;
  minNegative: real;

begin
  // Ввод количества чисел
  writeln('Введите количество чисел:');
  readln(count);

  // Проверка на корректность ввода количества чисел
  if (count < 1) or (count > MAX_SIZE) then
  begin
    writeln('Некорректное количество чисел.');
    exit;
  end;

  // Ввод чисел
  writeln('Введите ', count, ' чисел:');
  for i := 1 to count do
    readln(numbers[i]);

  // Инициализация переменных
  p := 0;
  minNegative := 0; // Инициализируем нулем, так как в задаче не указано, что все числа положительные

  // Поиск минимального из p отрицательных чисел
  i := 1;
  while (p < count) and (i <= count) do
  begin
    if numbers[i] < 0 then
    begin
      if (p = 0) or (numbers[i] < minNegative) then
        minNegative := numbers[i];
      Inc(p);
    end;
    Inc(i);
  end;

  // Проверка на наличие отрицательных чисел
  if p = 0 then
    writeln('Отрицательных чисел нет')
  else
    writeln('Минимальное из ', p, ' отрицательных чисел: ', minNegative);
end.

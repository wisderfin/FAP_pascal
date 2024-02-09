program ProductOfEvenIndexedElements;

const
  SIZE = 10; // Размер массива

var
  arr: array[1..SIZE] of integer;
  i: integer;
  product: integer;

begin
  // Заполнение массива случайными числами
  Randomize; // Инициализация генератора случайных чисел
  writeln('Исходный массив:');
  for i := 1 to SIZE do
  begin
    arr[i] := Random(100); // Генерация случайного числа от 0 до 99
    writeln('arr[', i, '] = ', arr[i]);
  end;

  // Нахождение произведения элементов массива с четными индексами
  product := 1;
  writeln('Элементы с четными индексами:');
  i := 2; // начинаем с четного индекса
  while i <= SIZE do
  begin
    writeln('arr[', i, '] = ', arr[i]);
    product := product * arr[i];
    i := i + 2; // переходим к следующему четному индексу
  end;

  // Вывод результата
  writeln('Произведение элементов с четными индексами: ', product);
end.

program MultiplyByMax;

const
  MAX_SIZE = 100; // Максимальный размер массива

var
  A, B: array[1..MAX_SIZE] of integer;
  n, i, maxElement: integer;

begin
  // Ввод размера массива
  writeln('Введите размер массива (не более ', MAX_SIZE, '):');
  readln(n);

  // Проверка корректности ввода размера массива
  if (n < 1) or (n > MAX_SIZE) then
  begin
    writeln('Некорректный размер массива.');
    exit;
  end;

  // Ввод элементов массива
  writeln('Введите элементы массива:');
  for i := 1 to n do
    readln(A[i]);

  // Находим максимальный элемент массива
  maxElement := A[1];
  for i := 2 to n do
  begin
    if A[i] > maxElement then
      maxElement := A[i];
  end;

  // Создаем новый массив, умножая элементы исходного массива на максимальный элемент
  writeln('Новый массив, элементы которого являются произведения элементов A(i) на максимальный элемент массива A:');
  for i := 1 to n do
  begin
    B[i] := A[i] * maxElement;
    writeln('B[', i, '] = ', B[i]);
  end;
end.

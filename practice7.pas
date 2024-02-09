program CountNonZeroRows;

const
  MAX_ROWS = 100; // максимальное количество строк
  MAX_COLS = 100; // максимальное количество столбцов

type
  Matrix = array[1..MAX_ROWS, 1..MAX_COLS] of integer;

var
  A: Matrix;
  numRows, numCols, i, j, nonZeroRows: integer;

begin
  // Ввод размеров матрицы
  writeln('Введите количество строк и столбцов матрицы:');
  readln(numRows, numCols);

  // Проверка корректности ввода
  if (numRows < 1) or (numRows > MAX_ROWS) or (numCols < 1) or (numCols > MAX_COLS) then
  begin
    writeln('Некорректные размеры матрицы.');
    exit;
  end;

  // Ввод элементов матрицы
  writeln('Введите элементы матрицы:');
  for i := 1 to numRows do
    for j := 1 to numCols do
      readln(A[i, j]);

  // Вывод матрицы на экран
  writeln('Матрица:');
  for i := 1 to numRows do
  begin
    for j := 1 to numCols do
      write(A[i, j]:5);
    writeln;
  end;

  // Определение количества строк без нулевых элементов
  nonZeroRows := 0;
  for i := 1 to numRows do
  begin
    // Предполагаем, что строка не содержит нулевых элементов
    j := 1;
    while (j <= numCols) and (A[i, j] <> 0) do
      Inc(j);
    // Если в строке найден хотя бы один нулевой элемент, увеличиваем счетчик
    if j > numCols then
      Inc(nonZeroRows);
  end;

  // Вывод количества строк без нулевых элементов
  writeln('Количество строк без нулевых элементов: ', nonZeroRows);
end.

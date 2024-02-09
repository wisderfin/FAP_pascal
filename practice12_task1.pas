program FilterFile;

var
  inputFile, outputFile: Text;
  number: integer;

begin
  // Открытие файла f для чтения
  Assign(inputFile, 'f.txt');
  Reset(inputFile);

  // Создание или перезапись файла g для записи
  Assign(outputFile, 'g.txt');
  Rewrite(outputFile);

  // Чтение элементов из файла f и запись нужных элементов в файл g
  while not EOF(inputFile) do
  begin
    // Чтение числа из файла f
    Read(inputFile, number);

    // Проверка условий и запись числа в файл g, если оно соответствует условиям
    if (number mod 3 = 0) and (number mod 7 <> 0) then
      Write(outputFile, number, ' ');
  end;

  // Закрытие файлов
  Close(inputFile);
  Close(outputFile);

  // Вывод сообщения об успешном завершении
  writeln('Фильтрация завершена. Результат записан в файл g.txt');
end.

program CountCharactersBeforeColon;

var
  str: string;
  i, count: integer;

begin
  // Ввод строки символов
  writeln('Введите строку символов:');
  readln(str);

  // Инициализация счетчика
  count := 0;

  // Поиск первого встреченного двоеточия
  for i := 1 to Length(str) do
  begin
    if str[i] = ':' then
      break; // Если найдено двоеточие, завершаем цикл
    Inc(count); // Увеличиваем счетчик символов
  end;

  // Вывод результата
  writeln('Количество символов, предшествующих первому встреченному двоеточию: ', count);
end.

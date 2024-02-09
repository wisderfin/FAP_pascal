program RemoveSubstringInBrackets;

function FindClosingBracket(const str: string; openBracketPos: integer): integer;
var
  i, count: integer;
begin
  count := 0;
  for i := openBracketPos to Length(str) do
  begin
    if str[i] = '(' then
      Inc(count)
    else if str[i] = ')' then
    begin
      Dec(count);
      if count = 0 then
      begin
        FindClosingBracket := i;
        Exit;
      end;
    end;
  end;
  FindClosingBracket := 0; // If closing bracket is not found
end;

var
  str: string;
  i, openBracketPos, closeBracketPos: integer;

begin
  // Ввод строки символов
  writeln('Введите строку символов:');
  readln(str);

  // Находим позицию первой открывающей скобки
  openBracketPos := Pos('(', str);

  // Если открывающая скобка найдена
  if openBracketPos > 0 then
  begin
    // Находим позицию первой закрывающей скобки после открывающей
    closeBracketPos := FindClosingBracket(str, openBracketPos);

    // Если закрывающая скобка найдена
    if closeBracketPos > 0 then
    begin
      // Удаляем часть строки между скобками (включительно)
      Delete(str, openBracketPos, closeBracketPos - openBracketPos + 1);
    end;
  end;

  // Вывод результата
  writeln('Строка после удаления части в скобках:', str);
end.
